
insertRow() {

    echo "$DBName"

    read -p "Enter the Table Name you want to Insert: " tableDB

    if [ -n "$tableDB" ]
    then
        if [ -f "../DataBases/$DBName/$tableDB" ]
        then

            if [ -s "../DataBases/$DBName/$tableDB" ]
            then
                id=$(( $(tail -1 "../DataBases/$DBName/$tableDB" | cut -d'|' -f1) + 1 ))
            else
                id=1
            fi

            echo "New ID: $id"

            columns=$(head -1 "../DataBases/$DBName/$tableDB" | tr '|' ' ')

            row="$id"

            for column in $columns
            do
                if [ "$column" != "id" ]
                then
                    read -p "Enter $column: " value
                    row="$row || $value"
                fi
            done

            echo "$row ||" >> "../DataBases/$DBName/$tableDB"

            echo "Row inserted successfully"

        else
            echo "$tableDB does not exist"
        fi
    else
        echo "Error , you entered empty name"
    fi
}

insertRow
