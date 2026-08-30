connect_db() {

    read -p "Enter the Database Name you want to connect: " DBName

    if [ -n "$DBName" ]
    then
        if [[ "${DBName:0:1}" =~ [a-zA-Z] ]]
        then
            if [ -d "../DataBases/$DBName" ]
            then

                options=("Create Table" "Show Tables" "Delete Table" "Insert Row" "Select Row" "Delete Row" "Back")

                PS3='Please Enter your Choice: '

                select opt in "${options[@]}"
                do
                    case $opt in

                        "Create Table")
                            export DBName
                            ./CreateTable.sh;;

                        "Show Tables")
                            export DBName
                            ./ShowTable.sh;;

                        "Delete Table")
                            export DBName
                            ./DeleteTable.sh;;

                        "Insert Row")
                            export DBName
                            ./InsertRow.sh;;

                        "Select Row")
                            export DBName
                            ./SelectRow.sh;;

                        "Delete Row")
                            export DBName
                            ./DeleteRow.sh;;

                        "Back")
                            break
                            ;;

                    esac
                done

            else
                echo "$DBName doesn't exist"
            fi
        else
            echo "Database name should start with a letter"
        fi
    else
        echo "Error: you entered an empty name"
    fi
}

connect_db