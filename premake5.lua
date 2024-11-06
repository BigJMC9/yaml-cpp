project "yaml-cpp"
<<<<<<< HEAD
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"	
	staticruntime "on"
=======
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"	
	staticruntime "off"
>>>>>>> d147c3bc08f3c3828919bd6d6e714cd27e43bfde

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs
	{
		"include/"
	}

<<<<<<< HEAD
	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

=======
>>>>>>> d147c3bc08f3c3828919bd6d6e714cd27e43bfde
	filter "system:windows"
		systemversion "latest"	

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
<<<<<<< HEAD
=======
		defines "yaml_cpp_EXPORTS"
>>>>>>> d147c3bc08f3c3828919bd6d6e714cd27e43bfde

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
<<<<<<< HEAD
=======
		defines "yaml_cpp_EXPORTS"
>>>>>>> d147c3bc08f3c3828919bd6d6e714cd27e43bfde

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
<<<<<<< HEAD
=======
		symbols "off"
		defines "yaml_cpp_EXPORTS"
>>>>>>> d147c3bc08f3c3828919bd6d6e714cd27e43bfde
