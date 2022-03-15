export CORE_PEER_TLS_ENABLED=true

# Export the Orderer ca.crt
export ORDERER_CA=${PWD}/artifacts/channel/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# Export the Organization 1 ca.crt for each peer
export PEER0_ORG1_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt

# Export the Organization 2 ca.crt
export PEER0_ORG2_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt

# Export the Organization 3 ca.crt
export PEER0_ORG3_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt

# Export the Organization 4 ca.crt
export PEER0_ORG4_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt

# Export the Organization 5 ca.crt
export PEER0_ORG5_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/peers/peer0.org5.example.com/tls/ca.crt

# Export the Organization 6 ca.crt
export PEER0_ORG6_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org6.example.com/peers/peer0.org6.example.com/tls/ca.crt


# Export the CFG path
export FABRIC_CFG_PATH=${PWD}/artifacts/channel/config/

export CHANNEL_NAME=mychannel
export CHANNEL_NAME_2=mychannel2
export CHANNEL_NAME_3=mychannel3
export CHANNEL_NAME_4=mychannel4

# Function to set the Global for each peer in the organization 1
# ------------- Peer 0 of Organization 1 ---------------------------------
setGlobalsForPeer0Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7051
}
# ------------- Peer 1 of Organization 1 ---------------------------------
setGlobalsForPeer1Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7061
}
# ------------- Peer 2 of Organization 1 ---------------------------------
setGlobalsForPeer2Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7071
}
# ------------- Peer 3 of Organization 1 ---------------------------------
setGlobalsForPeer3Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7081
}
# ------------- Peer 4 of Organization 1 ---------------------------------
setGlobalsForPeer4Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7091
}
# ------------- Peer 5 of Organization 1 ---------------------------------
setGlobalsForPeer5Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7101
}
# ------------- Peer 6 of Organization 1 ---------------------------------
setGlobalsForPeer6Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7111
}
# ------------- Peer 7 of Organization 1 ---------------------------------
setGlobalsForPeer7Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7121
}
# ------------- Peer 8 of Organization 1 ---------------------------------
setGlobalsForPeer8Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7131
}
# ------------- Peer 9 of Organization 1 ---------------------------------
setGlobalsForPeer9Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7141
}
# ------------- Peer 10 of Organization 1 ---------------------------------
setGlobalsForPeer10Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7151
}
# ------------- Peer 11 of Organization 1 ---------------------------------
setGlobalsForPeer11Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7161
}
# ------------- Peer 12 of Organization 1 ---------------------------------
setGlobalsForPeer12Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7171
}
# ------------- Peer 13 of Organization 1 ---------------------------------
setGlobalsForPeer13Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7181
}
# ------------- Peer 13 of Organization 1 ---------------------------------
setGlobalsForPeer14Org1(){
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7191
}



# Function to set the Global for each peer in the organization 2
# ------------- Peer 0 of Organization 2 ---------------------------------
setGlobalsForPeer0Org2(){
    export CORE_PEER_LOCALMSPID="Org2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9051   
}
# ------------- Peer 1 of Organization 2 ---------------------------------
setGlobalsForPeer1Org2(){
    export CORE_PEER_LOCALMSPID="Org2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9061   
}
# ------------- Peer 2 of Organization 2 ---------------------------------
setGlobalsForPeer2Org2(){
    export CORE_PEER_LOCALMSPID="Org2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9071   
}



# Function to set the Global for each peer in the organization 3
# ------------- Peer 0 of Organization 3 ---------------------------------
setGlobalsForPeer0Org3(){
    export CORE_PEER_LOCALMSPID="Org3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:11051 
}
# ------------- Peer 1 of Organization 3 ---------------------------------
setGlobalsForPeer1Org3(){
    export CORE_PEER_LOCALMSPID="Org3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:11061 
}
# ------------- Peer 2 of Organization 3 ---------------------------------
setGlobalsForPeer2Org3(){
    export CORE_PEER_LOCALMSPID="Org3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:11071 
}




# Function to set the Global for each peer in the organization 4
# ------------- Peer 0 of Organization 4 ---------------------------------
setGlobalsForPeer0Org4(){
    export CORE_PEER_LOCALMSPID="Org4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:13051
}
# ------------- Peer 1 of Organization 4 ---------------------------------
setGlobalsForPeer1Org4(){
    export CORE_PEER_LOCALMSPID="Org4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:13061
}
# ------------- Peer 2 of Organization 4 ---------------------------------
setGlobalsForPeer2Org4(){
    export CORE_PEER_LOCALMSPID="Org4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:13071
}



# Function to set the Global for each peer in the organization 5
# ------------- Peer 0 of Organization 5 ---------------------------------
setGlobalsForPeer0Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15051  
}
# ------------- Peer 1 of Organization 5 ---------------------------------
setGlobalsForPeer1Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15061  
}
# ------------- Peer 2 of Organization 5 ---------------------------------
setGlobalsForPeer2Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15071  
}
# ------------- Peer 3 of Organization 5 ---------------------------------
setGlobalsForPeer3Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15081  
}
# ------------- Peer 4 of Organization 5 ---------------------------------
setGlobalsForPeer4Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15091  
}
# ------------- Peer 5 of Organization 5 ---------------------------------
setGlobalsForPeer5Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15101  
}
# ------------- Peer 6 of Organization 5 ---------------------------------
setGlobalsForPeer6Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15111  
}
# ------------- Peer 7 of Organization 5 ---------------------------------
setGlobalsForPeer7Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15121  
}
# ------------- Peer 8 of Organization 5 ---------------------------------
setGlobalsForPeer8Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15131  
}
# ------------- Peer 9 of Organization 5 ---------------------------------
setGlobalsForPeer9Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15141  
}
# ------------- Peer 10 of Organization 5 ---------------------------------
setGlobalsForPeer10Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15151  
}
# ------------- Peer 11 of Organization 5 ---------------------------------
setGlobalsForPeer11Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15161  
}
# ------------- Peer 12 of Organization 5 ---------------------------------
setGlobalsForPeer12Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15171  
}
# ------------- Peer 13 of Organization 5 ---------------------------------
setGlobalsForPeer13Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15181  
}
# ------------- Peer 14 of Organization 5 ---------------------------------
setGlobalsForPeer14Org5(){
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15191  
}



# Function to set the Global for each peer in the organization 6
# ------------- Peer 0 of Organization 6 ---------------------------------
setGlobalsForPeer0Org6(){
    export CORE_PEER_LOCALMSPID="Org6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:17051
}
# ------------- Peer 1 of Organization 6 ---------------------------------
setGlobalsForPeer1Org6(){
    export CORE_PEER_LOCALMSPID="Org6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:17061
}
# ------------- Peer 2 of Organization 6 ---------------------------------
setGlobalsForPeer2Org6(){
    export CORE_PEER_LOCALMSPID="Org6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:17071
}




presetup() {
    echo Vendoring Go dependencies ...
    pushd ./artifacts/src/github.com/fabcar/go
    GO111MODULE=on go mod vendor
    popd
    echo Finished vendoring Go dependencies
}
# presetup

CHANNEL_NAME="mychannel3"
CC_RUNTIME_LANGUAGE="golang"
VERSION="1"
SEQUENCE="1"
# CC_SRC_PATH="./artifacts/src/github.com/fabcar/go"
# CC_NAME="fabcar"

# Modified by my own
CC_SRC_PATH="./artifacts/src/github.com/simple_sc_3/go"
CC_NAME="simple_sc_3"

packageChaincode() {
    rm -rf ${CC_NAME}.tar.gz
    setGlobalsForPeer0Org1
    peer lifecycle chaincode package ${CC_NAME}.tar.gz \
        --path ${CC_SRC_PATH} --lang ${CC_RUNTIME_LANGUAGE} \
        --label ${CC_NAME}_${VERSION}
    echo "===================== Chaincode is packaged ===================== "
}
# packageChaincode

installChaincode() {
    # ------------ Install Chaincode for Organization 1 ------------------------------------
    setGlobalsForPeer0Org1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.org1 ===================== "
    setGlobalsForPeer1Org1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer1.org1 ===================== "
    # setGlobalsForPeer2Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org1 ===================== "
    # setGlobalsForPeer3Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer3.org1 ===================== "
    # setGlobalsForPeer4Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer4.org1 ===================== "
    # setGlobalsForPeer5Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer5.org1 ===================== "
    # setGlobalsForPeer6Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer6.org1 ===================== "
    # setGlobalsForPeer7Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer7.org1 ===================== "
    # setGlobalsForPeer8Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer8.org1 ===================== "
    # setGlobalsForPeer9Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer9.org1 ===================== "
    # setGlobalsForPeer10Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer10.org1 ===================== "
    # setGlobalsForPeer11Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer11.org1 ===================== "
    # setGlobalsForPeer12Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer12.org1 ===================== "
    # setGlobalsForPeer13Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer13.org1 ===================== "
    # setGlobalsForPeer14Org1
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer14.org1 ===================== "



    # ------------ Install Chaincode for Organization 2 ------------------------------------
    # setGlobalsForPeer0Org2
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer0.org2 ===================== "
    # setGlobalsForPeer1Org2
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer1.org2 ===================== "
    # setGlobalsForPeer2Org2
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org2 ===================== "



    # ------------ Install Chaincode for Organization 3 ------------------------------------
    # setGlobalsForPeer0Org3
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer0.org3 ===================== "
    # setGlobalsForPeer1Org3
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer1.org3 ===================== "
    # setGlobalsForPeer2Org3
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org3 ===================== "




    # ------------ Install Chaincode for Organization 4 ------------------------------------
    setGlobalsForPeer0Org4
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.org4 ===================== "
    setGlobalsForPeer1Org4
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer1.org4 ===================== "
    # setGlobalsForPeer2Org4
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org4 ===================== "




    # ------------ Install Chaincode for Organization 5 ------------------------------------
    # setGlobalsForPeer0Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer0.org5 ===================== "
    # setGlobalsForPeer1Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer1.org5 ===================== "
    # setGlobalsForPeer2Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org5 ===================== "
    # setGlobalsForPeer3Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer3.org5 ===================== "
    # setGlobalsForPeer4Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer4.org5 ===================== "
    # setGlobalsForPeer5Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer5.org5 ===================== "
    # setGlobalsForPeer6Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer6.org5 ===================== "
    # setGlobalsForPeer7Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer7.org5 ===================== "
    # setGlobalsForPeer8Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer8.org5 ===================== "
    # setGlobalsForPeer9Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer9.org5 ===================== "
    # setGlobalsForPeer10Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer10.org5 ===================== "
    # setGlobalsForPeer11Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer11.org5 ===================== "
    # setGlobalsForPeer12Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer12.org5 ===================== "
    # setGlobalsForPeer13Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer13.org5 ===================== "
    # setGlobalsForPeer14Org5
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer14.org5 ===================== "




    # ------------ Install Chaincode for Organization 6 ------------------------------------
    # setGlobalsForPeer0Org6
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer0.org6 ===================== "
    # setGlobalsForPeer1Org6
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer1.org6 ===================== "
    # setGlobalsForPeer2Org6
    # peer lifecycle chaincode install ${CC_NAME}.tar.gz
    # echo "===================== Chaincode is installed on peer2.org6 ===================== "
 
}

# installChaincode

queryInstalled() {
    setGlobalsForPeer0Org1
    peer lifecycle chaincode queryinstalled >&log3.txt
    cat log3.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log3.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.org1 on mychannel3 ===================== "
}

# queryInstalled

# --collections-config ./artifacts/private-data/collections_config.json \
#         --signature-policy "OR('Org1MSP.member','Org2MSP.member')" \

approveForMyOrg1() {
    setGlobalsForPeer0Org1
    # set -x
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} --version ${VERSION} \
        --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}
    # set +x

    echo "===================== chaincode approved from org 1 ===================== "

}
# queryInstalled
# approveForMyOrg1

# --signature-policy "OR ('Org1MSP.member')"
# --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA --peerAddresses localhost:9051 --tlsRootCertFiles $PEER0_ORG2_CA
# --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles $PEER0_ORG1_CA --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles $PEER0_ORG2_CA
#--channel-config-policy Channel/Application/Admins
# --signature-policy "OR ('Org1MSP.peer','Org2MSP.peer')"

# Function I comment
# checkCommitReadynessForOrg1(){
#     setGlobalsForPeer0Org1
#     peer lifecycle chaincode checkcommitreadiness \
#         --channelID $CHANNEL_NAME --name ${CC_NAME} --version ${VERSION} \
#         --sequence ${VERSION} --output json --init-required
#     echo "===================== checking commit readyness from org 1 ===================== "
# }

# Modify by my own
checkCommitReadynessForOrg1(){
    setGlobalsForPeer0Org1
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 1 ===================== "
}

approveForMyOrg2(){
    # Do I need to add peer 1 and peer 2?
    setGlobalsForPeer0Org2
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --version ${VERSION} --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}

    echo "===================== chaincode approved from org 2 ===================== "
}

checkCommitReadynessForOrg2(){

    setGlobalsForPeer0Org2
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:9051 --tlsRootCertFiles $PEER0_ORG2_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 2 ===================== "
}

# checkCommitReadyness

# To approve and check the commit of organization 3
approveForMyOrg3(){
    setGlobalsForPeer0Org3
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --version ${VERSION} --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}
    echo "===================== chaincode approved from org 3 ===================== "
}
checkCommitReadynessForOrg3(){
    setGlobalsForPeer0Org3
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:11051 --tlsRootCertFiles $PEER0_ORG3_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 3 ===================== "
}

# To approve and check the commit of organization 4
approveForMyOrg4(){
    setGlobalsForPeer0Org4
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --version ${VERSION} --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}
    echo "===================== chaincode approved from org 4 ===================== "
}
checkCommitReadynessForOrg4(){
    setGlobalsForPeer0Org4
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG4_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 4 ===================== "
}

# To approve and check the commit of organization 5
approveForMyOrg5(){
    setGlobalsForPeer0Org5
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --version ${VERSION} --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}
    echo "===================== chaincode approved from org 5 ===================== "
}
checkCommitReadynessForOrg5(){
    setGlobalsForPeer0Org5
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:15051 --tlsRootCertFiles $PEER0_ORG5_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 5 ===================== "
}


# To approve and check the commit of organization 6
approveForMyOrg6(){
    setGlobalsForPeer0Org6
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --version ${VERSION} --init-required --package-id ${PACKAGE_ID} \
        --sequence ${SEQUENCE}
    echo "===================== chaincode approved from org 6 ===================== "
}
checkCommitReadynessForOrg6(){
    setGlobalsForPeer0Org6
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:17051 --tlsRootCertFiles $PEER0_ORG6_CA \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json --init-required
    echo "===================== checking commit readyness from org 6 ===================== "
}








# checkCommitReadyness

commitChaincodeDefination() {
    setGlobalsForPeer0Org1
    peer lifecycle chaincode commit -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com \
        --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA \
        --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG4_CA \
        --version ${VERSION} --sequence ${SEQUENCE} --init-required

}

# commitChaincodeDefination

queryCommitted() {
    setGlobalsForPeer0Org1
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}

}

# queryCommitted

chaincodeInvokeInit() {
    setGlobalsForPeer0Org1
    peer chaincode invoke -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com \
        --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA \
        -C $CHANNEL_NAME -n ${CC_NAME} \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG4_CA \
        --isInit -c '{"Args":[]}'

}

# chaincodeInvokeInit

chaincodeInvoke() {
    setGlobalsForPeer0Org1

    # Create Car
    peer chaincode invoke -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com \
        --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA \
        -C $CHANNEL_NAME -n ${CC_NAME}  \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG4_CA \
        -c '{"function": "createCar","Args":["{\"id\":\"5\",\"make\":\"Tesla\",\"addedAt\":1600135409939,\"model\":\"Tester\", \"color\":\"white\",\"owner\":\"chan\"}"]}'

}

# chaincodeInvoke

chaincodeInvokeDeleteAsset() {
    setGlobalsForPeer0Org1

    # Create Car
    peer chaincode invoke -o localhost:7050 \
        --ordererTLSHostnameOverride orderer.example.com \
        --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA \
        -C $CHANNEL_NAME -n ${CC_NAME}  \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG4_CA \
        -c '{"function": "DeleteCarById","Args":["2"]}'

}

# chaincodeInvokeDeleteAsset

chaincodeQuery() {
    setGlobalsForPeer0Org1
    peer chaincode query -C $CHANNEL_NAME -n ${CC_NAME} -c '{"function": "GetCarById","Args":["5"]}'
}

# chaincodeQuery

# Run this function if you add any new dependency in chaincode
presetup

packageChaincode
installChaincode
queryInstalled

approveForMyOrg1
checkCommitReadynessForOrg1
# approveForMyOrg2
# checkCommitReadynessForOrg2
# approveForMyOrg3
# checkCommitReadynessForOrg3
approveForMyOrg4
checkCommitReadynessForOrg4
# approveForMyOrg5
# checkCommitReadynessForOrg5
# approveForMyOrg6
# checkCommitReadynessForOrg6

commitChaincodeDefination
queryCommitted
chaincodeInvokeInit
sleep 5
chaincodeInvoke
sleep 3
chaincodeQuery
