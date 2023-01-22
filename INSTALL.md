# TweakScale Companion Program

**TweakScale** lets you change the size of a part.

**TweakScale /L** is TweakScale under Lisias' management.

**TweakScale Companion** Are a set of add'ons aiming to give **TweakScale** support for 3rd parties.

**TweakScale Companion Program** Is a centralised database and distribution package for keeping up with the growing TweakScale Companion add'ons.



## Installation Instructions

To install, place the `GameData` folder from the package inside your Kerbal Space Program `GameData` folder:

* **REMOVE ANY OLD VERSIONS OF THE PRODUCT BEFORE INSTALLING**:
	+ Delete `<KSP_ROOT>/GameData/TweakScaleCompanion`
* Extract the package's `GameData/` folder into your KSP's as follows:
	+ `<PACKAGE>/GameData/TweakScaleCompanion ` --> `<KSP_ROOT>/GameData`
		- Overwrite any preexisting files.

The following file layout must be present after installation (includes the non included dependencies listed below):

```
<KSP_ROOT>
	[GameData]
		[ModuleManagerWatchDog]
			...
		[TweakScale]
			[Plugins]
				...
			[patches]
				...
			CHANGE_LOG.md
			DefaultScales.cfg
			Examples.cfg
			LICENSE
			NOTICE
			README.md
			ScaleExponents.cfg
			TweakScale.version
			documentation.txt
		[TweakScaleCompanion]
			[APP]
				...
			[FS]
				...
			[Frameworks]
				...
			[KIS]
				...
			[LivingStyle]
				...
			[NAP]
				...
			[OPT]
				...
			[PKMC]
				...
			[ReStockPlus]
				...
			[Rockets]
				...
			[SMCE]
				...
		666_ModuleManagerWatchDog.dll
		999_Scale_Redist.dll
		ModuleManager.dll
		...
	KSP.log
	PastDatabase.cfg
	...
```


### Dependencies

* TweakScale
	+ **Not Included**
* Module Manager 3.1.3 or later
	+ **Not Included**
