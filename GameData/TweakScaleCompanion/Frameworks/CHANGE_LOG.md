# TweakScale Companion :: Frameworks :: Change Log

* 2023-1106: 0.4.0.3 **Beta** (LisiasT) for KSP >= 1.2.2
	+ Works around a weird (new?) bug on KSP's Loading System.
		- See Really, really, really dumb mistake. See [Forum](https://forum.kerbalspaceprogram.com/topic/179030-ksp-130-tweakscale-under-lisias-management-2474-2023-1007/?do=findComment&comment=4337281) for details. 
* 2023-0416: 0.4.0.2 **Beta** (LisiasT) for KSP >= 1.2.2
	+ Removes a spurious dependency clausule on `TweakScalerTestFlightCore`
* 2023-0328: 0.4.0.1 **Beta** (LisiasT) for KSP >= 1.2.2
	+ Adjusts the Assembly Loading mechanism, allowing the thing to be loaded at first place!
		- Don't ask how I let this pass trough - I don't remember. :/
* 2023-0318: 0.4.0.0 **Beta** (LisiasT) for KSP >= 1.2.2
	+ Removes deprecated calls to KSPe. Minimum target is v2.5 now.
	+ Renders it compatible to TweakScale 2.4.7.0 and superior only.
	+ Formalises support for:
		- [Test Flight](https://forum.kerbalspaceprogram.com/index.php?/topic/99043-*/)
* 2021-1114: 0.3.0.0 **Beta** (LisiasT) for KSP >= 1.8
	+ New (Work In Progress!!) support for:
		- [Cryo Tanks](https://forum.kerbalspaceprogram.com/index.php?/topic/195042-*/)
		- [Space Dust](https://forum.kerbalspaceprogram.com/index.php?/topic/197723-*/)
		- [System Heat](https://forum.kerbalspaceprogram.com/index.php?/topic/193909-*/)
* 2021-0926: 0.2.0.0 **Beta** (LisiasT) for KSP >= 1.8
	+ Refactoring:
		- Using recent KSPe.Light.TweakScale features to allow selective loading of DLLs bound to 3rd-parties, allowing the Companion to be used on installments where these dependencies are not preset.
		- A lot of flexibility on deployment are available now.  
* 2021-0919: 0.1.0.2 **Beta** (LisiasT) for KSP >= 1.8
	+ A less than ideal initialisation routine were fixed.
	+ Closes Issues:
		- [#2](https://github.com/TweakScale/Companion_Frameworks/issues/2) Race Condition while initialising the PartModule
* 2021-0908: 0.1.0.1 **Beta** (LisiasT) for KSP >= 1.8
	+ Short circuiting some Dependency Checks due a new misbehaviour introduced on KSP 1.12.2
* 2021-0705: 0.1.0.0 **Beta** (LisiasT) for KSP >= 1.8
	+ (Properly) declares dependencies now
	+ Slightly faster patching when dependencies are not met. 
	+ Promotes the thingy to Beta status
		- See [KNOWN ISSUES](./KNOWN_ISSUES.md). 
* 2021-0626: 0.0.2.0 **ALPHA** (LisiasT) for KSP >= 1.8
	+ Rework initialisation procedures to cope with the new KSP 1.12 idiosyncrasies
	+ DLL is compiled in Release mode from now on.
* 2021-0530: 0.0.1.0 **ALPHA** (LisiasT) for KSP >= 1.8
	+ Initial public release
	+ **ALPHA** release, not ready for "production"
		- Compiled in DEBUG mode
		- See [KNOWN ISSUES](./KNOWN_ISSUES.md). 
