# gen-cert
Scripts to generate self signed cert with root CA and correct subjectAltName

    # generate root CA
    ./gen-root.sh # generates root CA

    # generate /path/to/cert.{crt,csr,key} for multiple domains
    ./gen-cert.sh /path/to/cert domain1 domain2 ... domainN
