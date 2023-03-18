# TweakScale Companion :: Firespitter :: Change Log

* 2023-0317: 1.3.0.0 (LisiasT) for KSP >= 1.3
	+ Removes deprecated calls to KSPe. Minimum target is v2.5 now.
	+ Renders it compatible to TweakScale 2.4.7.0 and superior only.
* 2023-0304: 1.2.0.0 (LisiasT) for KSP >= 1.3
	+ Adds support for Firespitter Extended
* 2020-0927: 1.1.0.0 (LisiasT) for KSP >= 1.3
	+ Getting rid of any lockdown on KSP 1.4, this thing now works on KSP 1.3 (as long your Firespitter does it too), taking advantage of the near future TweakScale 2.5 series.
	+ Refactoring using the new KSPe.Light.TweakScale v2.4 facilities to allow it to be safely installed on rigs without FS.
		- Lots of flexibility on packaging in the near future
* 2020-0116: 1.0.0.0 (LisiasT) for KSP >= 1.4
	+ TweakScale Companion for Firespitter goes gold! #HURRAY
* 2020-1228: 0.0.2.2 RC (LisiasT) for KSP >= 1.4
	+ Copes with KSPe new installment checks.
	+ Promoted to Release Candidate! #HURRAY
* 2020-0917: 0.0.2.1 Beta (LisiasT) for KSP >= 1.4
	+ Copes with TweakScale's new feature implemented on its Issue [#142 Add ignoreResourcesForCost to the TweakScale module attributes](https://github.com/net-lisias-ksp/TweakScale/issues/142)
* 2020-0829: 0.0.2.0 Beta (LisiasT) for KSP >= 1.4
	+ Promoting the stunt to Beta! :)
	+ Patches overhaul.
		- Complete rewrite of the patches.
		- Following current TweakScale standards
		- Some crafts using the old patches will need to be reworked.
	+ Updating the linking to use the latest TweakScale Beta
		- Prevents linking against the (current) release of TweakScale, what will render some problems at runtime.
		- KSPe.Light also changed a bit, and the version bump ended up causing an unhappy DLL redirection at loading time. 
* 2020-0716: 0.0.1.1 (LisiasT) for KSP >= 1.4 Alpha
	+ Revised code for the `FSbuyoancy` scaler.
		- Now it works correctly, and I know why! :D
	+ Better (and safer) deactivation code using info gathered from [TweakScale](https://github.com/net-lisias-ksp/TweakScale/issues/125)
	+ Startup check for dependencies
* 2020-0531: 0.0.1.0 (LisiasT) for KSP >= 1.4 Alpha
	+ Initial Public Release
	+ Closes Issues:
		- [#1](https://github.com/net-lisias-ksp/TweakScaleCompantion_FS/issues/1) Weird issue with SXT parts using FSBuoyancy
		- [#2](https://github.com/net-lisias-ksp/TweakScaleCompantion_FS/issues/2) Properly Support FSBuoyancy
