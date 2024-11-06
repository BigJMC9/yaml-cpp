project "yaml-cpp"
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"	
	staticruntime "off"

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

	filter "system:windows"
		systemversion "latest"	

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		defines "yaml_cpp_EXPORTS"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		defines "yaml_cpp_EXPORTS"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"
		defines "yaml_cpp_EXPORTS"
