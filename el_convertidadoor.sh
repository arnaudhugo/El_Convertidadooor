#
# 26-02-2018 13:10
# ARNAUD Hugo <arnaud_h@etna-alternance.net>
#
clear
while [[ $selected != "Quitter" ]]
do
echo '... :: El Convertidadooor :: ...'

select selected in Binary_to_Decimal Binary_to_Hex Hex_to_Binary Hex_to_Decimal Decimal_to_Binary Decimal_to_Hex Quitter
do
    case $selected in 
    Binary_to_Decimal|Binary_to_Hex|Hex_to_Binary|Hex_to_Decimal|Decimal_to_Binary|Decimal_to_Hex|Quitter)
    break
    ;;
*)
    echo "Invalid"
    ;;
    esac
done

if [ $selected != Quitter ]
then
    read -p "Entrer : " entrer
fi

if [ "$selected" = "Binary_to_Decimal" ]
then
    btd="$((2#$entrer))"
    echo "Resultat : "
    echo $btd
elif [ "$selected" = "Binary_to_Hex" ]
then
    echo "Resultat : "
    printf '%x\n' "$((2#$entrer))"
elif [ "$selected" = "Hex_to_Binary" ]
then
    echo "Resultat : "
    htb=$(echo "$((16#$entrer))")
    echo "obase=2;$htb" | bc
elif [ "$selected" = "Hex_to_Decimal" ]
then
    echo "Resultat : "
    echo "$((16#$entrer))"
elif [ "$selected" = "Decimal_to_Binary" ]
then
    echo "Resultat : "
    echo "obase=2;$entrer" | bc
elif [ "$selected" = "Decimal_to_Hex" ]
then
    echo "Resultat : "
    echo "obase=16;$entrer" | bc
fi
done