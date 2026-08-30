
show_tables() {

    if [ -n "$DBName" ]
    then

        if [ -d "../DataBases/$DBName" ]
        then

            if [ -z "$(ls -A "../DataBases/$DBName")" ]
            then
                echo "No tables created"
            else
                ls "../DataBases/$DBName"
            fi

        else
            echo "$DBName doesn't exist"
        fi

    else
        echo "Error: you entered an empty database name"
    fi
}

show_tables
