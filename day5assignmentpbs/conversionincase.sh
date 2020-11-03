echo "1. Convert feet into inches"
echo "2. Convert Feet to metre"
echo"3.convert inch to feet"
echo"4.mt to ft"
echo -n "Select your choice (1-4) : "
read choice
case $choice in
 1)
   echo - | awk '{print 10*12}'

   ;;

  2)
     echo - | awk '{print 10*0.3048}'
   ;;

  3)echo - | awk '{print 10/12}'
   ;;
   4)echo - | awk '{print 10/0.3048}'
   ;;

esac






