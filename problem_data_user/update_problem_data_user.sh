fName=$1
echo "$1!"
curl -X POST -H "Content-Type: application/json" --data "$(cat "$fName")" -v "http://39.104.62.0:8081/data/saveProblemData"
if [ $? == 0 ]; then
    echo "curl update problem data success!"
else
    echo "curl update problem data failed!"
fi
