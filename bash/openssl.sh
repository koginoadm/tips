# set fqdn
v_fqdn=

# vars
v_fqdn_key="/etc/pki/tls/certs/${v_fqdn}.key"
v_fqdn_csr="/etc/pki/tls/certs/${v_fqdn}.csr"
v_fqdn_crt="/etc/pki/tls/certs/${v_fqdn}.crt"

# Generate a certificate
[ ! -f "${v_fqdn_key}" ] && openssl genrsa 2048 > ${v_fqdn_key}
[ ! -f "${v_fqdn_csr}" ] && openssl req -new -key ${v_fqdn_key} -subj "/C=JP/CN=${v_fqdn}" > ${v_fqdn_csr}
[ ! -f "${v_fqdn_crt}" ] && cat ${v_fqdn_csr} | openssl x509 -days 3650 -req -signkey ${v_fqdn_key} > ${v_fqdn_crt}
