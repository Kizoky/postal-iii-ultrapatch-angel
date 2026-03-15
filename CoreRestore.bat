@echo off
@REM Setup
SET "SourceFolder=p3"
SET "DestinationFolder=core"
SET "CoreList=CoreList.txt"

echo Creating core folder structure

@REM Create the folders
MD "%DestinationFolder%" >NUL 2>&1
MD "%DestinationFolder%\cfg" >NUL 2>&1
MD "%DestinationFolder%\expressions" >NUL 2>&1
MD "%DestinationFolder%\gfx" >NUL 2>&1
MD "%DestinationFolder%\gfx\hlfaceposer" >NUL 2>&1
MD "%DestinationFolder%\materials" >NUL 2>&1
MD "%DestinationFolder%\materials\cable" >NUL 2>&1
MD "%DestinationFolder%\materials\console" >NUL 2>&1
MD "%DestinationFolder%\materials\Debug" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\alienflesh" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\Antlion" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\bloodyflesh" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\CONCRETE" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\flesh" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\GLASS" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\METAL" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\Sand" >NUL 2>&1
MD "%DestinationFolder%\materials\Decals\WOOD" >NUL 2>&1
MD "%DestinationFolder%\materials\Dev" >NUL 2>&1
MD "%DestinationFolder%\materials\Editor" >NUL 2>&1
MD "%DestinationFolder%\materials\Effects" >NUL 2>&1
MD "%DestinationFolder%\materials\Effects\AdvisorEffect" >NUL 2>&1
MD "%DestinationFolder%\materials\Effects\comball" >NUL 2>&1
MD "%DestinationFolder%\materials\Effects\CombineShield" >NUL 2>&1
MD "%DestinationFolder%\materials\Effects\tp_eyefx" >NUL 2>&1
MD "%DestinationFolder%\materials\Engine" >NUL 2>&1
MD "%DestinationFolder%\materials\hlmv" >NUL 2>&1
MD "%DestinationFolder%\materials\HUD" >NUL 2>&1
MD "%DestinationFolder%\materials\Models" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\airboat_broken_gibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\combine_helicopter_gibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\furniture_gibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\Glass" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\HGibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\metalgibs" >NUL 2>&1
MD "%DestinationFolder%\materials\Models\Gibs\woodgibs" >NUL 2>&1
MD "%DestinationFolder%\materials\particle" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_gib1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_goop1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_goop2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_goop3" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_goop4" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\antlion_goop5" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\aurora_1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\aurora_2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\blood1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\blood_mist" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\debris1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\debris2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\droplets" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\fastSideSprites" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Burning_Character" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_3" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_4" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_5" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_6" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_7" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Fire_Particle_8" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\flameThrowerFire" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\impactEffect" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\midSideSprites" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\old" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\pagetest" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Particle_Ring_Wave_Curl" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\pebble1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\rippleMapV2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\smoke1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\smoke2" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Splash01" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\testSequence" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\tinyFireSprites" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\vistaSmokeV1" >NUL 2>&1
MD "%DestinationFolder%\materials\particle\Water" >NUL 2>&1
MD "%DestinationFolder%\materials\shadertest" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites\fireburst" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites\Flames1" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites\Flames2" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites\Hud" >NUL 2>&1
MD "%DestinationFolder%\materials\Sprites\Plasma1" >NUL 2>&1
MD "%DestinationFolder%\materials\sun" >NUL 2>&1
MD "%DestinationFolder%\materials\Tools" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\achievements" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\appchooser" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\bonusmaps" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\chapters" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\common" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\fonts" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\friends" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\hud" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\icons" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\plugin" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\resource" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\screens" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\servers" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\steam" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\steam\games" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\techcredits" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\tools" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\tools\actbusy" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\tools\ifm" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\tools\sampletool" >NUL 2>&1
MD "%DestinationFolder%\materials\VGUI\tools\vmt" >NUL 2>&1
MD "%DestinationFolder%\materials\voice" >NUL 2>&1
MD "%DestinationFolder%\models" >NUL 2>&1
MD "%DestinationFolder%\models\editor" >NUL 2>&1
MD "%DestinationFolder%\models\Gibs" >NUL 2>&1
MD "%DestinationFolder%\models\Gibs\furniture_gibs" >NUL 2>&1
MD "%DestinationFolder%\models\ShaderTest" >NUL 2>&1
MD "%DestinationFolder%\models\Tools" >NUL 2>&1
MD "%DestinationFolder%\models\Tools\camera" >NUL 2>&1
MD "%DestinationFolder%\resource" >NUL 2>&1
MD "%DestinationFolder%\resource\UI" >NUL 2>&1
MD "%DestinationFolder%\scripts" >NUL 2>&1
MD "%DestinationFolder%\scripts\colorcorrection" >NUL 2>&1
MD "%DestinationFolder%\scripts\effects" >NUL 2>&1
MD "%DestinationFolder%\scripts\screens" >NUL 2>&1
MD "%DestinationFolder%\scripts\talker" >NUL 2>&1
MD "%DestinationFolder%\scripts\vehicles" >NUL 2>&1
MD "%DestinationFolder%\sound" >NUL 2>&1
MD "%DestinationFolder%\sound\common" >NUL 2>&1
MD "%DestinationFolder%\sound\physics" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\body" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\cardboard" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\concrete" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\flesh" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\glass" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\metal" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\nearmiss" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\plaster" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\plastic" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\rubber" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\surfaces" >NUL 2>&1
MD "%DestinationFolder%\sound\physics\wood" >NUL 2>&1
MD "%DestinationFolder%\sound\weapons" >NUL 2>&1
MD "%DestinationFolder%\sound\weapons\rpg" >NUL 2>&1

echo Moving the core files from "%SourceFolder%" folder to "%DestinationFolder%" folder

@REM Move the files to core folder
FOR /F "usebackq tokens=*" %%F IN ("%CoreList%") DO (
	@REM echo Moving "%DestinationFolder%\%%F" to "%DestinationFolder%\%%F"
	MOVE "%SourceFolder%\%%F" "%DestinationFolder%\%%F" >NUL 2>&1
)

echo Deleting the empty folders that were left in "%SourceFolder%" folder

@REM Delete the empty folders left in p3 folder
RD "%SourceFolder%\expressions" /S /Q
RD "%SourceFolder%\gfx\hlfaceposer" /Q
RD "%SourceFolder%\gfx" /Q
RD "%SourceFolder%\materials\cable" /Q
RD "%SourceFolder%\materials\Debug" /Q
RD "%SourceFolder%\materials\Decals\alienflesh" /Q
RD "%SourceFolder%\materials\Decals\Antlion" /Q
RD "%SourceFolder%\materials\Decals\bloodyflesh" /Q
RD "%SourceFolder%\materials\Decals\flesh" /Q
RD "%SourceFolder%\materials\Decals\GLASS" /Q
RD "%SourceFolder%\materials\Decals\Sand" /Q
RD "%SourceFolder%\materials\Effects\AdvisorEffect" /Q
RD "%SourceFolder%\materials\Effects\comball" /Q
RD "%SourceFolder%\materials\Effects\CombineShield" /Q
RD "%SourceFolder%\materials\Effects\tp_eyefx" /Q
RD "%SourceFolder%\materials\Engine" /Q
RD "%SourceFolder%\materials\hlmv" /Q
RD "%SourceFolder%\materials\HUD" /Q
RD "%SourceFolder%\materials\Models\Gibs\airboat_broken_gibs" /Q
RD "%SourceFolder%\materials\Models\Gibs\combine_helicopter_gibs" /Q
RD "%SourceFolder%\materials\Models\Gibs\furniture_gibs" /Q
RD "%SourceFolder%\materials\Models\Gibs\Glass" /Q
RD "%SourceFolder%\materials\Models\Gibs\HGibs" /Q
RD "%SourceFolder%\materials\Models\Gibs\metalgibs" /Q
RD "%SourceFolder%\materials\Models\Gibs\woodgibs" /Q
RD "%SourceFolder%\materials\particle\antlion_gib1" /Q
RD "%SourceFolder%\materials\particle\antlion_goop1" /Q
RD "%SourceFolder%\materials\particle\antlion_goop2" /Q
RD "%SourceFolder%\materials\particle\antlion_goop3" /Q
RD "%SourceFolder%\materials\particle\antlion_goop4" /Q
RD "%SourceFolder%\materials\particle\antlion_goop5" /Q
RD "%SourceFolder%\materials\particle\aurora_1" /Q
RD "%SourceFolder%\materials\particle\aurora_2" /Q
RD "%SourceFolder%\materials\particle\blood1" /Q
RD "%SourceFolder%\materials\particle\blood_mist" /Q
RD "%SourceFolder%\materials\particle\debris1" /Q
RD "%SourceFolder%\materials\particle\debris2" /Q
RD "%SourceFolder%\materials\particle\droplets" /Q
RD "%SourceFolder%\materials\particle\fastSideSprites" /Q
RD "%SourceFolder%\materials\particle\Fire_Burning_Character" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_1" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_2" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_3" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_4" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_5" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_6" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_7" /Q
RD "%SourceFolder%\materials\particle\Fire_Particle_8" /Q
RD "%SourceFolder%\materials\particle\flameThrowerFire" /Q
RD "%SourceFolder%\materials\particle\impactEffect" /Q
RD "%SourceFolder%\materials\particle\midSideSprites" /Q
RD "%SourceFolder%\materials\particle\old" /Q
RD "%SourceFolder%\materials\particle\pagetest" /Q
RD "%SourceFolder%\materials\particle\Particle_Ring_Wave_Curl" /Q
RD "%SourceFolder%\materials\particle\pebble1" /Q
RD "%SourceFolder%\materials\particle\rippleMapV2" /Q
RD "%SourceFolder%\materials\particle\smoke1" /Q
RD "%SourceFolder%\materials\particle\smoke2" /Q
RD "%SourceFolder%\materials\particle\Splash01" /Q
RD "%SourceFolder%\materials\particle\testSequence" /Q
RD "%SourceFolder%\materials\particle\tinyFireSprites" /Q
RD "%SourceFolder%\materials\particle\vistaSmokeV1" /Q
RD "%SourceFolder%\materials\particle\Water" /Q
RD "%SourceFolder%\materials\shadertest" /Q
RD "%SourceFolder%\materials\Sprites\fireburst" /Q
RD "%SourceFolder%\materials\Sprites\Flames1" /Q
RD "%SourceFolder%\materials\Sprites\Flames2" /Q
RD "%SourceFolder%\materials\Sprites\Hud" /Q
RD "%SourceFolder%\materials\Sprites\Plasma1" /Q
RD "%SourceFolder%\materials\sun" /Q
RD "%SourceFolder%\materials\Tools" /Q
RD "%SourceFolder%\materials\VGUI\bonusmaps" /Q
RD "%SourceFolder%\materials\VGUI\common" /Q
RD "%SourceFolder%\materials\VGUI\fonts" /Q
RD "%SourceFolder%\materials\VGUI\friends" /Q
RD "%SourceFolder%\materials\VGUI\icons" /Q
RD "%SourceFolder%\materials\VGUI\plugin" /Q
RD "%SourceFolder%\materials\VGUI\screens" /Q
RD "%SourceFolder%\materials\VGUI\servers" /Q
RD "%SourceFolder%\materials\VGUI\steam\games" /Q
RD "%SourceFolder%\materials\VGUI\steam" /Q
RD "%SourceFolder%\materials\VGUI\techcredits" /Q
RD "%SourceFolder%\materials\VGUI\tools\actbusy" /Q
RD "%SourceFolder%\materials\VGUI\tools\ifm" /Q
RD "%SourceFolder%\materials\VGUI\tools\sampletool" /Q
RD "%SourceFolder%\materials\VGUI\tools\vmt" /Q
RD "%SourceFolder%\materials\VGUI\tools" /Q
RD "%SourceFolder%\materials\voice" /Q
RD "%SourceFolder%\models\Gibs\furniture_gibs" /Q
RD "%SourceFolder%\models\ShaderTest" /Q
RD "%SourceFolder%\models\Tools\camera" /Q
RD "%SourceFolder%\models\Tools" /Q
RD "%SourceFolder%\scripts\colorcorrection" /Q
RD "%SourceFolder%\scripts\effects" /Q
RD "%SourceFolder%\sound\physics\body" /Q
RD "%SourceFolder%\sound\physics\cardboard" /Q
RD "%SourceFolder%\sound\physics\concrete" /Q
RD "%SourceFolder%\sound\physics\flesh" /Q
RD "%SourceFolder%\sound\physics\glass" /Q
RD "%SourceFolder%\sound\physics\nearmiss" /Q
RD "%SourceFolder%\sound\physics\plaster" /Q
RD "%SourceFolder%\sound\physics\plastic" /Q
RD "%SourceFolder%\sound\physics\rubber" /Q
RD "%SourceFolder%\sound\physics\surfaces" /Q
RD "%SourceFolder%\sound\physics\wood" /Q
RD "%SourceFolder%\sound\weapons\rpg" /Q

echo Core folder has been restored!
pause
