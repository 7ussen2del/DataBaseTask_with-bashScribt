create_db() {

    read -p "Enter your DataBase Name you need create: " DBCreate

    if [ -n "$DBCreate" ]
    then

        if [ -d "../DataBases/$DBCreate" ]
        then
            echo "$DBCreate already exists"

        else

            if [[ "${DBCreate:0:1}" =~ [a-zA-Z] ]]
            then
                mkdir "../DataBases/$DBCreate"
                echo "$DBCreate created"

            else
                echo "Database name should start with a letter"
            fi

        fi

    else
        echo "Error, you entered empty name"
    fi
}

create_db