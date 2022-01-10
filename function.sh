#alternative way to use adb globally without setting path variable 

function adb() {
  /path/to/adb $@ #read all the arguments
}
function adbip() {
  output=$(adb devices)
  name=${output:25:8}
    if [ $name = "caqd5z" ]; then #replace "caqd5z" with device name 
      echo "device conneced"
      output=$(adb -d shell ip addr show wlan0)
      echo $output
      ip=${output:148:15}
      echo $ip
      adb connect $ip:5555
      return 1
    else
      echo "device not connected "
    fi  
  return 1
}
