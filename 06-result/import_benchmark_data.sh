
if [ ! $# -eq 1 ]; then
    echo "Please enter set name as argument"
    exit
fi

mkdir -p data/$1
echo "writing in data/$1"


# endpoints="client_auth_finish client_register_finish  server_register_finish client_auth_ke client_register_start server_auth_finish server_register_start client_auth_start overall_auth server_auth_start client_initialization overall_register server_initialization"

endpoints="group_generate_keys group_compute_shared_key tripledh_compute_client tripledh_compute_server ideal_cipher_encryption ideal_cipher_decryption aes_encryption aes_decryption"


for endpoint in $endpoints; do
    echo $endpoint
    cp ../../06-khape-implementation/target/criterion/${endpoint}/new/raw.csv .
    python normalize_data.py > data/$1/${endpoint}.dat
    rm raw.csv
done
