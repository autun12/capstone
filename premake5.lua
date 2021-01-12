project "Capstone"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines
    {
    }

    includedirs
    {
        "include"
    }

	files
	{
        "cs.c",
        "cs_priv.h",
        "LEB128.h",
        "MathExtras.h",
        "MCDisassembler.h",
        "MCFixedLenDisassembler.h",
        "MCInst.c",
        "MCInst.h",
        "MCInstrDesc.c",
        "MCInstrDesc.h",
        "MCRegisterInfo.c",
        "MCRegisterInfo.h",
        "SStream.c",
        "SStream.h",
        "utils.c",
        "utils.h",
        "arch/ARM/*.c",
        "arch/ARM/*.h",
        "arch/ARM/*.inc",
        "arch/AArch64/*.c",
        "arch/AArch64/*.h",
        "arch/AArch64/*.inc",
        "arch/Mips/*.c",
        "arch/Mips/*.h",
        "arch/Mips/*.inc",
        "arch/PowerPC/*.c",
        "arch/PowerPC/*.h",
        "arch/PowerPC/*.inc",
        "arch/X86/*.c",
        "arch/X86/*.h",
        "arch/X86/*.inc",
        "arch/Sparc/*.c",
        "arch/Sparc/*.h",
        "arch/Sparc/*.inc",
        "arch/SystemZ/*.c",
        "arch/SystemZ/*.h",
        "arch/SystemZ/*.inc",
        "arch/XCore/*.c",
        "arch/XCore/*.h",
        "arch/XCore/*.inc",
        "arch/M68K/*.c",
        "arch/M68K/*.h",
        "arch/M68K/*.inc",
        "arch/TMS320C64x/*.c",
        "arch/TMS320C64x/*.h",
        "arch/TMS320C64x/*.inc",
        "arch/M680X/*.c",
        "arch/M680X/*.h",
        "arch/M680X/*.inc",
        "arch/EVM/*.c",
        "arch/EVM/*.h",
        "arch/EVM/*.inc",
        "arch/MOS65XX/*.c",
        "arch/MOS65XX/*.h",
        "arch/MOS65XX/*.inc"
    }
    
	filter "system:linux"
		pic "On"

		systemversion "latest"
		staticruntime "On"

		files
		{
        }

        defines
        {
        }

        buildoptions
        {
        }

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files
		{
		}

		defines 
		{
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
