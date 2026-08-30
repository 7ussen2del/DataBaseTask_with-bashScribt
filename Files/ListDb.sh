
list_db() {

    if [ -d "../DataBases" ]
    then

        if [ -z "$(ls -A "../DataBases")" ]
        then
            echo "No DB created"
        else
            ls "../DataBases"
        fi

    else
        echo "DataBases directory does not exist"
    fi
}

list_db

