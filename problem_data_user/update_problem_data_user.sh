fName=$1
echo "$1!"
status_code=$(curl -X POST -H "Content-Type: application/json" --data "$(cat "$fName")" -w "%{http_code}\n" -v "http://39.104.62.0:8081/data/saveProblemData")

echo "$status_code"
if [ "$status" == "200" ]; then
    echo "curl update problem data success!"
else
    echo "curl update problem data failed!"
fi
