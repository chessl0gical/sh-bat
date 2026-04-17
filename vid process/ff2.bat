ffmpeg -i input.mp4 ^
  -vf "scale=2560:1440:force_original_aspect_ratio=decrease:flags=lanczos,pad=2560:1440:(ow-iw)/2:(oh-ih)/2,setsar=1" ^
  -r 60 ^
  -c:v libx264 -preset slower -crf 18 ^
  -pix_fmt yuv420p ^
  -c:a aac -b:a 192k ^
  -movflags +faststart ^
  output_1440p.mp4
pause