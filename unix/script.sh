screenSize=$(adb shell wm size)
echo "Getting screen size..."
wxh=$( echo "$screenSize" | cut -d' ' -f 3 )
width=$( echo "$wxh" | cut -d'x' -f 1 )
height=$( echo "$wxh" | cut -d'x' -f 2 )
centerHoz=`expr $width / 2`
centerVert=`expr $height / 2`
pidTinder=$(adb shell pidof com.tinder)
if [[ $pidTinder == '' ]]
then
  echo "Opps! Look like Tinder don't open :("
else
  while true
  do
   echo "Finding a love <3"
   adb shell input swipe "$centerHoz $centerVert $width $centerVert" 
   sleep 1
  done
fi
