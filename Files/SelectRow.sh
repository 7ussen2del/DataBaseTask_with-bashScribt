selectRow() {

    read -p "Enter the Table Name you want to Select from: " tableDB

    if [ -n "$tableDB" ]
    then
        if [ -f "../DataBases/$DBName/$tableDB" ]
        then

            read -p "Enter the ID you want to Select: " id

            if [[ "$id" =~ ^[0-9]+$ ]]
            then

                row=$(grep -E "^$id[[:space:]]*\|\|" "../DataBases/$DBName/$tableDB")

                if [ -n "$row" ]
                then
                    echo "$row"
                else
                    echo "ID $id does not exist"
                fi

            else
                echo "Sorry integers only"
            fi

        else
            echo "$tableDB does not exist"
        fi
    else
        echo "Error , you entered empty name"
    fi
}

selectRow