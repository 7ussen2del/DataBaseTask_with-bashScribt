options=("Create DB" "List DB" "Drop DB" "Connect DB" "Exit")
PS3='Please Enter you Choise: '

select opt in "${options[@]}"
do
case $opt in
    "Create DB")
    ./CreateDb.sh;;
    "List DB")
    ./ListDb.sh;;
    "Drop DB")
    ./DropDb.sh;;
    "Connect DB")
    ./ConnectDB.sh;;
    "Exit")
    break;;
    esac
done