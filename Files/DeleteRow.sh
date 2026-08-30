deleteRow() {

    read -p "Enter the Table Name you want to Delete from: " tableDB

    if [ -n "$tableDB" ]
    then
        if [ -f "../DataBases/$DBName/$tableDB" ]
        then

            read -p "Enter the ID you want to Delete: " id

            if [[ "$id" =~ ^[0-9]+$ ]]
            then

                line=$(grep -n -E "^$id[[:space:]]*\|\|" "../DataBases/$DBName/$tableDB" | cut -d: -f1)

                if [ -n "$line" ]
                then
                    sed -i "${line}d" "../DataBases/$DBName/$tableDB"

                    echo "Row deleted successfully"
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

deleteRow