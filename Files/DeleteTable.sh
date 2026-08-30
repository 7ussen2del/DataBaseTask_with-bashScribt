read -p "Enter the Table Name you want to delete: " deleteTB

if [ -n "$deleteTB" ]
then
    if [[ "${deleteTB:0:1}" =~ [a-zA-Z] ]]
    then
        if [ -f "../DataBases/$DBName/$deleteTB" ]
        then
            rm -rf "../DataBases/$DBName/$deleteTB"

            if [ -f "../DataBases/$DBName/$deleteTB" ]
            then
                echo "Error in deleting $deleteTB"
            else
                echo "$deleteTB deleted successfully"
            fi
        else
            echo "$deleteTB doesn't exist"
        fi
    else
        echo "Table name should start with a letter"
    fi
else
    echo "Error: you entered an empty name"
fi