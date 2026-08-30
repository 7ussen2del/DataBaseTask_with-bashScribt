delete_db() {

    read -p "Enter the Database Name you want to delete: " DBDelete

    if [ -n "$DBDelete" ]

    then

        if [[ "${DBDelete:0:1}" =~ [a-zA-Z] ]]

        then

            if [[ -d "../DataBases/$DBDelete" ]]

            then

                rm -rf "../DataBases/$DBDelete"

                if [ -d "../DataBases/$DBDelete" ] 

                then

                    echo "Error in deleting $DBDelete"

                else

                    echo  "$DBDelete deleted successfully"

                fi

            else

                echo "$DBDelete doesn't exist"

            fi

        else

            echo "Database name should start with a letter"

        fi

    else

        echo "Error: you entered an empty name"

    fi
}

delete_db