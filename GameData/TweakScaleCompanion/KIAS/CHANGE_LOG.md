# TweakScale Companion :: Kerbal Inventory & Attachment Systems (KIAS) :: Change Log

* 2023-0318: 1.1.0.0 (LisiasT) for KSP >= 1.3.0
	+ Rebrands the thing to "KIAS"
		- KAS was supposed to be added by now, but RealLife™ said "no".
	+ Removes deprecated calls to KSPe. Minimum target is v2.5 now.
	+ Renders it compatible to TweakScale 2.4.7.0 and superior only.
* 2022-0502: 1.0.0.2 (LisiasT) for KSP >= 1.3.0
	+ Fixes a NRE that was happening due the new TweakScale's "Upgrade Pipeline".
	+ Closes issues:
		- [#5](https://github.com/net-lisias-ksp/TweakScaleCompanion_KIS/issues/5) NRE when TweakScale dispatches OnRescale after upgrading a Scale Type that was changed on some patch 
* 2021-1010: 1.0.0.0 (LisiasT) for KSP >= 1.3.0
	+ TSCo-KIS goes gold!!! **#HURRAY!!**
	+ Refactoring using the new KSPe.Light.TweakScale v2.4 facilities to allow it to be safely installed on rigs without it.
		+ Lots of flexibility on packaging in the near future
	+ Raises the bar to 1.3.0 (something is not coping well on KSP > 1.10, apparently something related to `KSPField`)
* 2021-0116: 0.1.0.0 RC (LisiasT) for KSP >= 1.2.2
	+ TweakScale 2.4.4.x related updates
	+ Some missed adjustments on the scaling process.
	+ Promoting to Release Candidate!! :)
* 2020-0905: 0.0.2.1 BETA (LisiasT) for KSP >= 1.2.2
	+ Fixing the dependency check code.
* 2020-0718: 0.0.2.0 BETA (LisiasT) for KSP >= 1.2.2
	+ Better (and safer) deactivation code using info gathered from [TweakScale](https://github.com/net-lisias-ksp/TweakScale/issues/125)
	+ Startup check for dependencies
	+ Patches overhaul. Better maintainability, easier to cope with the [lint tool](https://github.com/net-lisias-ksp/ksp-tools-public). 
	+ (Finally) implementing a listener to user changing the PAW.
* 2020-0505: 0.0.1.1 Alpha (LisiasT) for KSP >= 1.2.2
	+ Added the DLLs, as TweakScale 2.5.0.11 (with the new methods) are on the wild.
* 2020-0503: 0.0.1.0 Alpha (LisiasT) for KSP >= 1.2.2
	+ Initial public version for testing 
