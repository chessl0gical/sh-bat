ffmpeg -i input.mp4 ^
  -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,setsar=1" ^
  -r 60 ^
  -c:v libx264 -preset slower -crf 17 ^
  -pix_fmt yuv420p ^
  -c:a aac -b:a 192k ^
  -movflags +faststart ^
  output_1080p.mp4

pause