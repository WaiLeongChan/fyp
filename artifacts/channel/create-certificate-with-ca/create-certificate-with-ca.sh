register_peer_org1(){
  echo
  echo "Register $1 for org1"
  echo
  fabric-ca-client register --caname ca.org1.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem
}

register_peer_org2(){
  echo
  echo "Register $1 for org2"
  echo
  fabric-ca-client register --caname ca.org2.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
}

register_peer_org3(){
  echo
  echo "Register $1 for org3"
  echo
  fabric-ca-client register --caname ca.org3.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
}

register_peer_org4(){
  echo
  echo "Register $1 for org4"
  echo
  fabric-ca-client register --caname ca.org4.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
}

register_peer_org5(){
  echo
  echo "Register $1 for org5"
  echo
  fabric-ca-client register --caname ca.org5.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem
}

register_peer_org6(){
  echo
  echo "Register $1 for org6"
  echo
  fabric-ca-client register --caname ca.org6.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
}

register_peer_org7(){
  echo
  echo "Register $1 for org7"
  echo
  fabric-ca-client register --caname ca.org7.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem
}

register_peer_org8(){
  echo
  echo "Register $1 for org8"
  echo
  fabric-ca-client register --caname ca.org8.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
}

register_peer_org9(){
  echo
  echo "Register $1 for org9"
  echo
  fabric-ca-client register --caname ca.org9.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
}

register_peer_org10(){
  echo
  echo "Register $1 for org10"
  echo
  fabric-ca-client register --caname ca.org10.example.com --id.name $1 --id.secret $2 --id.type peer --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
}

register_orderer(){
  echo
  echo "Register orderer"
  echo
   
  fabric-ca-client register --caname ca-orderer --id.name $1 --id.secret $2 --id.type orderer --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
}

createcertificatesForOrg1(){
  echo
  echo "Enroll the CA admin For Organization 1"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/
  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org1.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:7054 --caname ca.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml

  register_peer_org1 peer0 peer0pw

  register_peer_org1 peer1 peer1pw

  register_peer_org1 peer2 peer2pw

  # register_peer_org1 peer3 peer3pw

  # register_peer_org1 peer4 peer4pw

  # register_peer_org1 peer5 peer5pw
  
  # register_peer_org1 peer6 peer6pw

  # register_peer_org1 peer7 peer7pw

  # register_peer_org1 peer8 peer8pw

  # register_peer_org1 peer9 peer9pw

  # register_peer_org1 peer10 peer10pw

  # register_peer_org1 peer11 peer11pw

  # register_peer_org1 peer12 peer12pw

  # register_peer_org1 peer13 peer13pw

  # register_peer_org1 peer14 peer14pw

  echo 
  echo "Register user"
  echo
  fabric-ca-client register --caname ca.org1.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  echo
  echo "Register the org admin"
  echo
  fabric-ca-client register --caname ca.org1.example.com --id.name org1admin --id.secret org1adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 1 - Peer 0
  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp --csr.hosts peer0.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls --enrollment.profile tls --csr.hosts peer0.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org1.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org1.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 1
  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/msp --csr.hosts peer1.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls --enrollment.profile tls --csr.hosts peer1.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 2
  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/msp --csr.hosts peer2.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls --enrollment.profile tls --csr.hosts peer2.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 3
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com

  # echo
  # echo "## Generate the peer3 msp"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/msp --csr.hosts peer3.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer3-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls --enrollment.profile tls --csr.hosts peer3.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer3.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 4
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com

  # echo
  # echo "## Generate the peer4 msp"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/msp --csr.hosts peer4.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer4-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls --enrollment.profile tls --csr.hosts peer4.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer4.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 5
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com

  # echo
  # echo "## Generate the peer5 msp"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/msp --csr.hosts peer5.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer5-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls --enrollment.profile tls --csr.hosts peer5.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer5.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 6
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com

  # echo
  # echo "## Generate the peer6 msp"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/msp --csr.hosts peer6.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer6-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls --enrollment.profile tls --csr.hosts peer6.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer6.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 7
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com

  # echo
  # echo "## Generate the peer7 msp"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/msp --csr.hosts peer7.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer7-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls --enrollment.profile tls --csr.hosts peer7.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer7.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 8
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com

  # echo
  # echo "## Generate the peer8 msp"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/msp --csr.hosts peer8.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer8-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls --enrollment.profile tls --csr.hosts peer8.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer8.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 9
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com

  # echo
  # echo "## Generate the peer9 msp"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/msp --csr.hosts peer9.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer9-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls --enrollment.profile tls --csr.hosts peer9.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer9.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 10
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com

  # echo
  # echo "## Generate the peer10 msp"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/msp --csr.hosts peer10.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer10-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls --enrollment.profile tls --csr.hosts peer10.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer10.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 11
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com

  # echo
  # echo "## Generate the peer11 msp"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/msp --csr.hosts peer11.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer11-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls --enrollment.profile tls --csr.hosts peer11.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer11.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 12
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com

  # echo
  # echo "## Generate the peer12 msp"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/msp --csr.hosts peer12.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer12-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls --enrollment.profile tls --csr.hosts peer12.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer12.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 13
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com

  # echo
  # echo "## Generate the peer13 msp"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/msp --csr.hosts peer13.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer13-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls --enrollment.profile tls --csr.hosts peer13.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer13.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organazation 1 - Peer 14
  # mkdir -p ../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com

  # echo
  # echo "## Generate the peer14 msp"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/msp --csr.hosts peer14.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer14-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls --enrollment.profile tls --csr.hosts peer14.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer14.org1.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/users/User1@org1.example.com

  echo
  echo "## Generate the user msp"
  echo
  fabric-ca-client enroll -u https://user1:user1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com

  echo
  echo "## Generate the org admin msp"
  echo
  fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/config.yaml

}

createCertificatesForOrg2(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org2.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:8054 --caname ca.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-8054-ca-org2-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-8054-ca-org2-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-8054-ca-org2-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-8054-ca-org2-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml

  register_peer_org2 peer0 peer0pw

  register_peer_org2 peer1 peer1pw

  register_peer_org2 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org2.example.com --id.name org2admin --id.secret org2adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 2 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp --csr.hosts peer0.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls --enrollment.profile tls --csr.hosts peer0.org2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/ca/ca.org2.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 2 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp --csr.hosts peer1.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls --enrollment.profile tls --csr.hosts peer1.org2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 2 - Peer 2

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/msp --csr.hosts peer2.org2.example.com --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls --enrollment.profile tls --csr.hosts peer2.org2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer2.org2.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/users/User1@org2.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/User1@org2.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org2admin:org2adminpw@localhost:8054 --caname ca.org2.example.com -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org2/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp/config.yaml

}

createCertificatesForOrg3(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org3.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:10054 --caname ca.org3.example.com --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-10054-ca-org3-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-10054-ca-org3-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-10054-ca-org3-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-10054-ca-org3-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/config.yaml

  register_peer_org3 peer0 peer0pw

  register_peer_org3 peer1 peer1pw

  # register_peer_org3 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org3.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org3.example.com --id.name org3admin --id.secret org3adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 3 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/msp --csr.hosts peer0.org3.example.com --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls --enrollment.profile tls --csr.hosts peer0.org3.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org3.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/tlsca/tlsca.org3.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org3.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/ca/ca.org3.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 3 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/msp --csr.hosts peer1.org3.example.com --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls --enrollment.profile tls --csr.hosts peer1.org3.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 3 - Peer 2

  # mkdir -p ../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com

  # echo
  # echo "## Generate the peer2 msp"
  # echo
   
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/msp --csr.hosts peer2.org3.example.com --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer2-tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls --enrollment.profile tls --csr.hosts peer2.org3.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org3.example.com/peers/peer2.org3.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/users/User1@org3.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/users/User1@org3.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org3admin:org3adminpw@localhost:10054 --caname ca.org3.example.com -M ${PWD}/../crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org3/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org3.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp/config.yaml

}

createCertificatesForOrg4(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org4.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:12054 --caname ca.org4.example.com --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-12054-ca-org4-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-12054-ca-org4-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-12054-ca-org4-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-12054-ca-org4-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/config.yaml

  register_peer_org4 peer0 peer0pw

  register_peer_org4 peer1 peer1pw

  # register_peer_org4 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org4.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org4.example.com --id.name org4admin --id.secret org4adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 4 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/msp --csr.hosts peer0.org4.example.com --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls --enrollment.profile tls --csr.hosts peer0.org4.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org4.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/tlsca/tlsca.org4.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org4.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/ca/ca.org4.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 4 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/msp --csr.hosts peer1.org4.example.com --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls --enrollment.profile tls --csr.hosts peer1.org4.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 4 - Peer 2

  # mkdir -p ../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com

  # echo
  # echo "## Generate the peer2 msp"
  # echo
   
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/msp --csr.hosts peer2.org4.example.com --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer2-tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls --enrollment.profile tls --csr.hosts peer2.org4.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org4.example.com/peers/peer2.org4.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/users/User1@org4.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/users/User1@org4.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org4admin:org4adminpw@localhost:12054 --caname ca.org4.example.com -M ${PWD}/../crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org4/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org4.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp/config.yaml
 
}

createCertificatesForOrg5(){
  echo
  echo "Enroll the CA admin For Organization 5"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/
  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org5.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:14054 --caname ca.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-14054-ca-org5-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-14054-ca-org5-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-14054-ca-org5-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-14054-ca-org5-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml

  register_peer_org5 peer0 peer0pw

  register_peer_org5 peer1 peer1pw

  # register_peer_org5 peer2 peer2pw

  # register_peer_org5 peer3 peer3pw

  # register_peer_org5 peer4 peer4pw

  # register_peer_org5 peer5 peer5pw

  # register_peer_org5 peer6 peer6pw

  # register_peer_org5 peer7 peer7pw

  # register_peer_org5 peer8 peer8pw

  # register_peer_org5 peer9 peer9pw

  # register_peer_org5 peer10 peer10pw

  # register_peer_org5 peer11 peer11pw

  # register_peer_org5 peer12 peer12pw

  # register_peer_org5 peer13 peer13pw

  # register_peer_org5 peer14 peer14pw

  echo 
  echo "Register user"
  echo
  fabric-ca-client register --caname ca.org5.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  echo
  echo "Register the org admin"
  echo
  fabric-ca-client register --caname ca.org5.example.com --id.name org5admin --id.secret org5adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 0
  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/msp --csr.hosts peer0.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls --enrollment.profile tls --csr.hosts peer0.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org5.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/tlsca/tlsca.org5.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org5.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/ca/ca.org5.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 1
  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/msp --csr.hosts peer1.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls --enrollment.profile tls --csr.hosts peer1.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer1.org5.example.com/tls/server.key


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 2
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com

  # echo
  # echo "## Generate the peer2 msp"
  # echo
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/msp --csr.hosts peer2.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer2-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer2:peer2pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls --enrollment.profile tls --csr.hosts peer2.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer2.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 3
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com

  # echo
  # echo "## Generate the peer3 msp"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/msp --csr.hosts peer3.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer3-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls --enrollment.profile tls --csr.hosts peer3.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer3.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 4
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com

  # echo
  # echo "## Generate the peer4 msp"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/msp --csr.hosts peer4.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer4-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls --enrollment.profile tls --csr.hosts peer4.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer4.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 5
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com

  # echo
  # echo "## Generate the peer5 msp"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/msp --csr.hosts peer5.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer5-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls --enrollment.profile tls --csr.hosts peer5.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer5.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 6
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com

  # echo
  # echo "## Generate the peer6 msp"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/msp --csr.hosts peer6.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer6-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls --enrollment.profile tls --csr.hosts peer6.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer6.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 7
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com

  # echo
  # echo "## Generate the peer7 msp"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/msp --csr.hosts peer7.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer7-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls --enrollment.profile tls --csr.hosts peer7.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer7.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 8
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com

  # echo
  # echo "## Generate the peer8 msp"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/msp --csr.hosts peer8.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer8-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls --enrollment.profile tls --csr.hosts peer8.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer8.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 9
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com

  # echo
  # echo "## Generate the peer9 msp"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/msp --csr.hosts peer9.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer9-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls --enrollment.profile tls --csr.hosts peer9.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer9.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 10
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com

  # echo
  # echo "## Generate the peer10 msp"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/msp --csr.hosts peer10.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer10-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls --enrollment.profile tls --csr.hosts peer10.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer10.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 11
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com

  # echo
  # echo "## Generate the peer11 msp"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/msp --csr.hosts peer11.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer11-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls --enrollment.profile tls --csr.hosts peer11.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer11.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 12
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com

  # echo
  # echo "## Generate the peer12 msp"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/msp --csr.hosts peer12.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer12-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls --enrollment.profile tls --csr.hosts peer12.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer12.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 13
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com

  # echo
  # echo "## Generate the peer13 msp"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/msp --csr.hosts peer13.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer13-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls --enrollment.profile tls --csr.hosts peer13.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer13.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 5 - Peer 14
  # mkdir -p ../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com

  # echo
  # echo "## Generate the peer14 msp"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/msp --csr.hosts peer14.org5.example.com --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer14-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls --enrollment.profile tls --csr.hosts peer14.org5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org5.example.com/peers/peer14.org5.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/users/User1@org5.example.com

  echo
  echo "## Generate the user msp"
  echo
  fabric-ca-client enroll -u https://user1:user1pw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/users/User1@org5.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com

  echo
  echo "## Generate the org admin msp"
  echo
  fabric-ca-client enroll -u https://org5admin:org5adminpw@localhost:14054 --caname ca.org5.example.com -M ${PWD}/../crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org5/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org5.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp/config.yaml

}

createCertificatesForOrg6(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org6.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:16054 --caname ca.org6.example.com --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-16054-ca-org6-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-16054-ca-org6-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-16054-ca-org6-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-16054-ca-org6-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/config.yaml

  register_peer_org6 peer0 peer0pw

  register_peer_org6 peer1 peer1pw

  register_peer_org6 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org6.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org6.example.com --id.name org6admin --id.secret org6adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 6 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/msp --csr.hosts peer0.org6.example.com --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls --enrollment.profile tls --csr.hosts peer0.org6.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org6.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/tlsca/tlsca.org6.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org6.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/ca/ca.org6.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 6 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/msp --csr.hosts peer1.org6.example.com --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls --enrollment.profile tls --csr.hosts peer1.org6.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer1.org6.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 6 - Peer 2

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/msp --csr.hosts peer2.org6.example.com --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls --enrollment.profile tls --csr.hosts peer2.org6.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org6.example.com/peers/peer2.org6.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/users/User1@org6.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/users/User1@org6.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org6admin:org6adminpw@localhost:16054 --caname ca.org6.example.com -M ${PWD}/../crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org6/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org6.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp/config.yaml
 
}

createCertificatesForOrg7(){
  echo
  echo "Enroll the CA admin For Organization 7"
  echo
  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/
  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org7.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:18054 --caname ca.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-18054-ca-org7-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-18054-ca-org7-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-18054-ca-org7-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-18054-ca-org7-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml

  register_peer_org7 peer0 peer0pw

  register_peer_org7 peer1 peer1pw

  register_peer_org7 peer2 peer2pw

  # register_peer_org7 peer3 peer3pw

  # register_peer_org7 peer4 peer4pw

  # register_peer_org7 peer5 peer5pw
  
  # register_peer_org7 peer6 peer6pw

  # register_peer_org7 peer7 peer7pw

  # register_peer_org7 peer8 peer8pw

  # register_peer_org7 peer9 peer9pw

  # register_peer_org7 peer10 peer10pw

  # register_peer_org7 peer11 peer11pw

  # register_peer_org7 peer12 peer12pw

  # register_peer_org7 peer13 peer13pw

  # register_peer_org7 peer14 peer14pw

  # register_peer_org7 peer15 peer15pw

  # register_peer_org7 peer16 peer16pw

  echo 
  echo "Register user"
  echo
  fabric-ca-client register --caname ca.org7.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  echo
  echo "Register the org admin"
  echo
  fabric-ca-client register --caname ca.org7.example.com --id.name org7admin --id.secret org7adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 0
  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/msp --csr.hosts peer0.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls --enrollment.profile tls --csr.hosts peer0.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org7.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/tlsca/tlsca.org7.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org7.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/ca/ca.org7.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 1
  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/msp --csr.hosts peer1.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls --enrollment.profile tls --csr.hosts peer1.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer1.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 2
  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/msp --csr.hosts peer2.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls --enrollment.profile tls --csr.hosts peer2.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer2.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 3
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com

  # echo
  # echo "## Generate the peer3 msp"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/msp --csr.hosts peer3.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer3-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer3:peer3pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls --enrollment.profile tls --csr.hosts peer3.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer3.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 4
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com

  # echo
  # echo "## Generate the peer4 msp"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/msp --csr.hosts peer4.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer4-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer4:peer4pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls --enrollment.profile tls --csr.hosts peer4.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer4.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 5
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com

  # echo
  # echo "## Generate the peer5 msp"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/msp --csr.hosts peer5.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer5-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer5:peer5pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls --enrollment.profile tls --csr.hosts peer5.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer5.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 6
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com

  # echo
  # echo "## Generate the peer6 msp"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/msp --csr.hosts peer6.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer6-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer6:peer6pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls --enrollment.profile tls --csr.hosts peer6.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer6.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 7
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com

  # echo
  # echo "## Generate the peer7 msp"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/msp --csr.hosts peer7.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer7-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer7:peer7pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls --enrollment.profile tls --csr.hosts peer7.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer7.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 8
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com

  # echo
  # echo "## Generate the peer8 msp"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/msp --csr.hosts peer8.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer8-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer8:peer8pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls --enrollment.profile tls --csr.hosts peer8.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer8.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 9
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com

  # echo
  # echo "## Generate the peer9 msp"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/msp --csr.hosts peer9.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer9-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer9:peer9pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls --enrollment.profile tls --csr.hosts peer9.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer9.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 10
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com

  # echo
  # echo "## Generate the peer10 msp"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/msp --csr.hosts peer10.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer10-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer10:peer10pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls --enrollment.profile tls --csr.hosts peer10.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer10.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 11
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com

  # echo
  # echo "## Generate the peer11 msp"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/msp --csr.hosts peer11.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer11-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer11:peer11pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls --enrollment.profile tls --csr.hosts peer11.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer11.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 12
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com

  # echo
  # echo "## Generate the peer12 msp"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/msp --csr.hosts peer12.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer12-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer12:peer12pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls --enrollment.profile tls --csr.hosts peer12.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer12.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 13
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com

  # echo
  # echo "## Generate the peer13 msp"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/msp --csr.hosts peer13.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer13-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer13:peer13pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls --enrollment.profile tls --csr.hosts peer13.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer13.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 14
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com

  # echo
  # echo "## Generate the peer14 msp"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/msp --csr.hosts peer14.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer14-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer14:peer14pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls --enrollment.profile tls --csr.hosts peer14.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer14.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Organization 7 - Peer 15
  # mkdir -p ../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com

  # echo
  # echo "## Generate the peer15 msp"
  # echo
  # fabric-ca-client enroll -u https://peer15:peer15pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/msp --csr.hosts peer15.org7.example.com --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the peer15-tls certificates"
  # echo
  # fabric-ca-client enroll -u https://peer15:peer15pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls --enrollment.profile tls --csr.hosts peer15.org7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org7.example.com/peers/peer15.org7.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/users/User1@org7.example.com

  echo
  echo "## Generate the user msp"
  echo
  fabric-ca-client enroll -u https://user1:user1pw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/users/User1@org7.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  mkdir -p ../crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com

  echo
  echo "## Generate the org admin msp"
  echo
  fabric-ca-client enroll -u https://org7admin:org7adminpw@localhost:18054 --caname ca.org7.example.com -M ${PWD}/../crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org7/tls-cert.pem

  cp ${PWD}/../crypto-config/peerOrganizations/org7.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp/config.yaml

}

createCertificatesForOrg8(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p /../crypto-config/peerOrganizations/org8.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org8.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:20054 --caname ca.org8.example.com --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-20054-ca-org8-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-20054-ca-org8-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-20054-ca-org8-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-20054-ca-org8-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/config.yaml

  register_peer_org8 peer0 peer0pw

  register_peer_org8 peer1 peer1pw

  register_peer_org8 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org8.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org8.example.com --id.name org8admin --id.secret org8adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 8 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/msp --csr.hosts peer0.org8.example.com --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls --enrollment.profile tls --csr.hosts peer0.org8.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org8.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/tlsca/tlsca.org8.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org8.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/ca/ca.org8.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 8 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/msp --csr.hosts peer1.org8.example.com --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls --enrollment.profile tls --csr.hosts peer1.org8.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer1.org8.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 8 - Peer 2

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/msp --csr.hosts peer2.org8.example.com --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls --enrollment.profile tls --csr.hosts peer2.org8.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org8.example.com/peers/peer2.org8.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/users/User1@org8.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/users/User1@org8.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org8admin:org8adminpw@localhost:20054 --caname ca.org8.example.com -M ${PWD}/../crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org8/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org8.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp/config.yaml
 
}

createCertificatesForOrg9(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p /../crypto-config/peerOrganizations/org9.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org9.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:22054 --caname ca.org9.example.com --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-22054-ca-org9-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-22054-ca-org9-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-22054-ca-org9-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-22054-ca-org9-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/config.yaml

  register_peer_org9 peer0 peer0pw

  register_peer_org9 peer1 peer1pw

  register_peer_org9 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org9.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org9.example.com --id.name org9admin --id.secret org9adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 9 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/msp --csr.hosts peer0.org9.example.com --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls --enrollment.profile tls --csr.hosts peer0.org9.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org9.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/tlsca/tlsca.org9.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org9.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/ca/ca.org9.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 9 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/msp --csr.hosts peer1.org9.example.com --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls --enrollment.profile tls --csr.hosts peer1.org9.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer1.org9.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 9 - Peer 2

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/msp --csr.hosts peer2.org9.example.com --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls --enrollment.profile tls --csr.hosts peer2.org9.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org9.example.com/peers/peer2.org9.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/users/User1@org9.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/users/User1@org9.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org9admin:org9adminpw@localhost:22054 --caname ca.org9.example.com -M ${PWD}/../crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org9/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org9.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp/config.yaml
 
}

createCertificatesForOrg10(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p /../crypto-config/peerOrganizations/org10.example.com/

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org10.example.com/

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:24054 --caname ca.org10.example.com --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-24054-ca-org10-example-com.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-24054-ca-org10-example-com.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-24054-ca-org10-example-com.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-24054-ca-org10-example-com.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/config.yaml

  register_peer_org10 peer0 peer0pw

  register_peer_org10 peer1 peer1pw

  register_peer_org10 peer2 peer2pw
   

  echo
  echo "Register user"
  echo
   
  fabric-ca-client register --caname ca.org10.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  echo
  echo "Register the org admin"
  echo
   
  fabric-ca-client register --caname ca.org10.example.com --id.name org10admin --id.secret org10adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/peers
  
  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 10 - Peer 0

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/msp --csr.hosts peer0.org10.example.com --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/msp/config.yaml

  echo
  echo "## Generate the peer0-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls --enrollment.profile tls --csr.hosts peer0.org10.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/tlscacerts/ca.crt

  mkdir ${PWD}/../crypto-config/peerOrganizations/org10.example.com/tlsca
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/tlsca/tlsca.org10.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/peerOrganizations/org10.example.com/ca
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/ca/ca.org10.example.com-cert.pem

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 10 - Peer 1

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com

  echo
  echo "## Generate the peer1 msp"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/msp --csr.hosts peer1.org10.example.com --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/msp/config.yaml

  echo
  echo "## Generate the peer1-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer1:peer1pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls --enrollment.profile tls --csr.hosts peer1.org10.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer1.org10.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  # Organization 10 - Peer 2

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com

  echo
  echo "## Generate the peer2 msp"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/msp --csr.hosts peer2.org10.example.com --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/msp/config.yaml

  echo
  echo "## Generate the peer2-tls certificates"
  echo
   
  fabric-ca-client enroll -u https://peer2:peer2pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls --enrollment.profile tls --csr.hosts peer2.org10.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/signcerts/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/keystore/* ${PWD}/../crypto-config/peerOrganizations/org10.example.com/peers/peer2.org10.example.com/tls/server.key

  # -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/users
  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/users/User1@org10.example.com

  echo
  echo "## Generate the user msp"
  echo
   
  fabric-ca-client enroll -u https://user1:user1pw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/users/User1@org10.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  mkdir -p ../crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com

  echo
  echo "## Generate the org admin msp"
  echo
   
  fabric-ca-client enroll -u https://org10admin:org10adminpw@localhost:24054 --caname ca.org10.example.com -M ${PWD}/../crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org10/tls-cert.pem
   

  cp ${PWD}/../crypto-config/peerOrganizations/org10.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp/config.yaml
 
}


createCretificatesForOrderer(){
  echo
  echo "Enroll the CA admin"
  echo
  mkdir -p ../crypto-config/ordererOrganizations/example.com

  export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/ordererOrganizations/example.com

   
  fabric-ca-client enroll -u https://admin:adminpw@localhost:9054 --caname ca-orderer --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  echo 'NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/localhost-9054-ca-orderer.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/localhost-9054-ca-orderer.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/localhost-9054-ca-orderer.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/localhost-9054-ca-orderer.pem
    OrganizationalUnitIdentifier: orderer' >${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml

  register_orderer orderer ordererpw

  register_orderer orderer2 ordererpw

  register_orderer orderer3 ordererpw

  # register_orderer orderer4 ordererpw

  # register_orderer orderer5 ordererpw

  # register_orderer orderer6 ordererpw

  # register_orderer orderer7 ordererpw

  # register_orderer orderer8 ordererpw

  # register_orderer orderer9 ordererpw

  # register_orderer orderer10 ordererpw

  # register_orderer orderer11 ordererpw

  # register_orderer orderer12 ordererpw

  # register_orderer orderer13 ordererpw

  # register_orderer orderer14 ordererpw

  # register_orderer orderer15 ordererpw
  

  echo
  echo "Register the orderer admin"
  echo
   
  fabric-ca-client register --caname ca-orderer --id.name ordererAdmin --id.secret ordererAdminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer

  mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com

  echo
  echo "## Generate the orderer 1 msp"
  echo
   
  fabric-ca-client enroll -u https://orderer:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp --csr.hosts orderer.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/config.yaml

  echo
  echo "## Generate the orderer 1 -tls certificates"
  echo
   
  fabric-ca-client enroll -u https://orderer:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls --enrollment.profile tls --csr.hosts orderer.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

  mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/tlscacerts/tlsca.example.com-cert.pem

  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 2

  mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com

  echo
  echo "## Generate the orderer 2 msp"
  echo
   
  fabric-ca-client enroll -u https://orderer2:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp --csr.hosts orderer2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp/config.yaml

  echo
  echo "## Generate the orderer 2 -tls certificates"
  echo
   
  fabric-ca-client enroll -u https://orderer2:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls --enrollment.profile tls --csr.hosts orderer2.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 3
  mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com

  echo
  echo "## Generate the orderer 3 msp"
  echo
   
  fabric-ca-client enroll -u https://orderer3:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp --csr.hosts orderer3.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp/config.yaml

  echo
  echo "## Generate the orderer 3 -tls certificates"
  echo
   
  fabric-ca-client enroll -u https://orderer3:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls --enrollment.profile tls --csr.hosts orderer3.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/ca.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/server.crt
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/server.key

  mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp/tlscacerts
  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 4
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com

  # echo
  # echo "## Generate the orderer 4 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer4:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/msp --csr.hosts orderer4.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 4 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer4:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls --enrollment.profile tls --csr.hosts orderer4.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer4.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 5
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com

  # echo
  # echo "## Generate the orderer 5 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer5:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/msp --csr.hosts orderer5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 5 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer5:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls --enrollment.profile tls --csr.hosts orderer5.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer5.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 6
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com

  # echo
  # echo "## Generate the orderer 6 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer6:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/msp --csr.hosts orderer6.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 6 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer6:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls --enrollment.profile tls --csr.hosts orderer6.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer6.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 7
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com

  # echo
  # echo "## Generate the orderer 7 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer7:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/msp --csr.hosts orderer7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 7 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer7:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls --enrollment.profile tls --csr.hosts orderer7.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer7.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 8
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com

  # echo
  # echo "## Generate the orderer 8 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer8:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/msp --csr.hosts orderer8.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 8 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer8:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls --enrollment.profile tls --csr.hosts orderer8.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer8.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 9
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com

  # echo
  # echo "## Generate the orderer 9 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer9:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/msp --csr.hosts orderer9.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 9 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer9:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls --enrollment.profile tls --csr.hosts orderer9.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer9.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 10
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com

  # echo
  # echo "## Generate the orderer 10 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer10:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/msp --csr.hosts orderer10.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 10 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer10:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls --enrollment.profile tls --csr.hosts orderer10.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer10.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 11
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com

  # echo
  # echo "## Generate the orderer 11 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer11:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/msp --csr.hosts orderer11.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 11 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer11:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls --enrollment.profile tls --csr.hosts orderer11.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer11.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 12
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com

  # echo
  # echo "## Generate the orderer 12 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer12:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/msp --csr.hosts orderer12.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 12 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer12:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls --enrollment.profile tls --csr.hosts orderer12.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer12.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 13
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com

  # echo
  # echo "## Generate the orderer 13 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer13:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/msp --csr.hosts orderer13.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 13 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer13:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls --enrollment.profile tls --csr.hosts orderer13.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer13.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 14
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com

  # echo
  # echo "## Generate the orderer 14 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer14:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/msp --csr.hosts orderer14.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 14 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer14:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls --enrollment.profile tls --csr.hosts orderer14.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer14.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  #  Orderer 15
  # mkdir -p ../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com

  # echo
  # echo "## Generate the orderer 15 msp"
  # echo
   
  # fabric-ca-client enroll -u https://orderer15:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/msp --csr.hosts orderer15.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/msp/config.yaml

  # echo
  # echo "## Generate the orderer 15 -tls certificates"
  # echo
   
  # fabric-ca-client enroll -u https://orderer15:ordererpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls --enrollment.profile tls --csr.hosts orderer15.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/ca.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/signcerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/server.crt
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/server.key

  # mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/msp/tlscacerts
  # cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer15.example.com/msp/tlscacerts/tlsca.example.com-cert.pem


  # --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  

  mkdir -p ../crypto-config/ordererOrganizations/example.com/users
  mkdir -p ../crypto-config/ordererOrganizations/example.com/users/Admin@example.com

  echo
  echo "## Generate the admin msp"
  echo
   
  fabric-ca-client enroll -u https://ordererAdmin:ordererAdminpw@localhost:9054 --caname ca-orderer -M ${PWD}/../crypto-config/ordererOrganizations/example.com/users/Admin@example.com/msp --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/users/Admin@example.com/msp/config.yaml

}

# createCretificateForOrderer

# sudo rm -rf ../crypto-config/*
#sudo rm -rf fabric-ca/*
createcertificatesForOrg1
createCertificatesForOrg2
# createCertificatesForOrg3
# createCertificatesForOrg4

# createCertificatesForOrg5

# createCertificatesForOrg6

# createCertificatesForOrg7

# createCertificatesForOrg8
# createCertificatesForOrg9
# createCertificatesForOrg10

createCretificatesForOrderer

