.\data\ffmpeg-N-100672-gf3f5ba0bf8-win64-lgpl-shared-vulkan\bin\ffmpeg.exe -i default_1.webm -pix_fmt yuv420p default_1.y4m
.\data\ffmpeg-N-100672-gf3f5ba0bf8-win64-lgpl-shared-vulkan\bin\ffmpeg.exe -i godot_1.webm -pix_fmt yuv420p godot_1.y4m
.\data\vmaf.exe --reference .\godot_1.y4m --distorted .\default_1.y4m
.\data\vmaf.exe --reference .\godot_1.y4m --distorted .\godot_2.y4m 