#!/usr/bin/env bash

# see http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'
source ./CONFIG.inc
IFS=$' '

__fix_file_permission() {
	local DLL=$1
	local targetbindir=$2

	# God damned unity/ksp - apparently they go the extra mile to be sure your installment is 100% insecure!! :/
	# If the DLL is not writable, it's not found by Unity/KSP. Damn.
	if [ -f "$targetbindir/$DLL" ]  ; then
		chmod u+w "$targetbindir/$DLL"
	fi
	if [ -f "${KSP_DEV}$targetbindir/$DLL" ]  ; then
		chmod u+w "${KSP_DEV}$targetbindir/$DLL"
	fi
}

__deploy() {
	local DLL=$1
	local targetbindir=$2

	if [ -f "./bin/Release/$DLL" ] ; then
		cp "./bin/Release/$DLL" "$targetbindir"
		if [ -d "${KSP_DEV}/GameData/" ] ; then
			cp "./bin/Release/$DLL" "${KSP_DEV}$targetbindir"
		fi
	fi
	if [ -f "./bin/Debug/$DLL" ] ; then
		if [ -d "${KSP_DEV}/$GameData/" ] ; then
			cp "./bin/Debug/$DLL" "${KSP_DEV}$targetbindir"
		fi
	fi

	__fix_file_permission $DLL $targetbindir
}

check() {
	local targetbindir="./GameData/$TARGETBINDIR/"
	if [ ! -d "$targetbindir" ] ; then
		rm -f "$targetbindir"
		mkdir -p "$targetbindir"
	fi

	for dll in $EXT_DLLS ; do
		if [ ! -f "${LIB}/$dll.dll" ] ; then
			echo "$dll not found!!! Aborting."
			exit -1
		fi
	done
}

deploy_dev() {
	local DLL=$1.dll

	if [ -f "./bin/Release/$DLL" ] ; then
		cp "./bin/Release/$DLL" "$LIB"
		chmod -w "$LIB/$DLL"
	fi
}

deploy() {
	local DLL=$1.dll
	local targetbindir="./GameData/$TARGETBINDIR/"

	__deploy $DLL $targetbindir
}

deploy_plugindata() {
	local DLL=$1.dll
	local targetbindir="./GameData/$TARGETBINDIR/PluginData/"

	__deploy $DLL $targetbindir
}

deploy_gamedata() {
	local PLACE=$1
	local DLL="{$PLACE}_$2.dll"
	local targetbindir="./GameData/"

	__deploy $DLL $targetlocaldir
}

deploy_ext() {
	local DLL=$1.dll
	local targetbindir="./GameData/$TARGETBINDIR/"

	if [ -f "$LIB/$DLL" ] ; then
		cp -R "$LIB/$DLL" "$targetbindir"
		if [ -d "${KSP_DEV}/GameData/" ] ; then
			cp -R "$LIB/$DLL" "${KSP_DEV}$targetbindir"
		fi
	fi

	__fix_file_permission $DLL $targetbindir
}

check
cp $VERSIONFILE "./GameData/$TARGETDIR"
#cp CHANGE_LOG.md "./GameData/$TARGETDIR"
cp README.md  "./GameData/$TARGETDIR"
cp LICENSE* "./GameData/$TARGETDIR"
cp NOTICE "./GameData/$TARGETDIR"

for dll in $GD_DLLS ; do
    deploy_dev $dll
    deploy_gamedata $GD_PRIORITY $dll
done

for dll in $PD_DLLS ; do
    deploy_plugindata $dll
done

for dll in $DLLS ; do
    deploy_dev $dll
    deploy $dll
done

for dll in $EXT_DLLS ; do
    deploy_ext $dll
done

echo "${VERSION} Deployed into ${KSP_DEV}"
