test_count=$1
zip_name=$2

bash create_test_file.sh ${test_count}

zip -o ${zip_name} problem.conf test*.in test*.out

rm test*.in
rm test*.out
