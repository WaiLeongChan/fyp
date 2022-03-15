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


createChannel(){
    rm -rf ./channel-artifacts/*
    # Create the first channel "mychannel"
    setGlobalsForPeer0Org1
    peer channel create -o localhost:7050 -c $CHANNEL_NAME \
    --ordererTLSHostnameOverride orderer.example.com \
    -f ./artifacts/channel/${CHANNEL_NAME}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME}.block \
    --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # Create the second channel "mychannel2"
    # setGlobalsForPeer0Org1
    # peer channel create -o localhost:7050 -c $CHANNEL_NAME_2 \
    # --ordererTLSHostnameOverride orderer.example.com \
    # -f ./artifacts/channel/${CHANNEL_NAME_2}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME_2}.block \
    # --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # # Create the second channel "mychannel3"
    # setGlobalsForPeer0Org1
    # peer channel create -o localhost:7050 -c $CHANNEL_NAME_3 \
    # --ordererTLSHostnameOverride orderer.example.com \
    # -f ./artifacts/channel/${CHANNEL_NAME_3}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME_3}.block \
    # --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # # Create the second channel "mychannel4"
    # setGlobalsForPeer0Org1
    # peer channel create -o localhost:7050 -c $CHANNEL_NAME_4 \
    # --ordererTLSHostnameOverride orderer.example.com \
    # -f ./artifacts/channel/${CHANNEL_NAME_4}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME_4}.block \
    # --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

removeOldCrypto(){
    rm -rf ./api-1.4/crypto/*
    rm -rf ./api-1.4/fabric-client-kv-org1/*
    rm -rf ./api-2.0/org1-wallet/*
    rm -rf ./api-2.0/org2-wallet/*
}

# Join all the peer to the channel
joinChannel_1(){

    # ------------------- Join the organization 1 peers --------------------------
    echo "Join Peer 0 - Organization 1 to the channel mychannel"
    setGlobalsForPeer0Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 1 - Organization 1 to the channel mychannel"
    setGlobalsForPeer1Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 1 to the channel mychannel"
    setGlobalsForPeer2Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 3 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer3Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 4 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer4Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 5 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer5Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 6 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer6Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 7 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer7Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 8 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer8Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 9 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer9Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 10 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer10Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 11 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer11Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 12 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer12Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 13 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer13Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 14 - Organization 1 to the channel mychannel"
    # setGlobalsForPeer14Org1
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block


    # ------------------- Join the organization 2 peers --------------------------
    echo "Join Peer 0 - Organization 2 to the channel mychannel"
    setGlobalsForPeer0Org2
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 1 - Organization 2 to the channel mychannel"
    setGlobalsForPeer1Org2
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 2 to the channel mychannel"
    setGlobalsForPeer2Org2
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    


    # ------------------- Join the organization 3 peers --------------------------
    # echo "Join Peer 0 - Organization 3 to the channel mychannel"
    # setGlobalsForPeer0Org3
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    # echo "Join Peer 1 - Organization 3 to the channel mychannel"
    # setGlobalsForPeer1Org3
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 2 - Organization 3 to the channel mychannel"
    # setGlobalsForPeer2Org3
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block


    # ------------------- Join the organization 4 peers --------------------------
    # echo "Join Peer 0 - Organization 4 to the channel mychannel"
    # setGlobalsForPeer0Org4
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    # echo "Join Peer 1 - Organization 4 to the channel mychannel"
    # setGlobalsForPeer1Org4
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 2 - Organization 4 to the channel mychannel"
    # setGlobalsForPeer2Org4
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 5 peers --------------------------
    # echo "Join Peer 0 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer0Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    # echo "Join Peer 1 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer1Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 2 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer2Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 3 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer3Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 4 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer4Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 5 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer5Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 6 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer6Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 7 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer7Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 8 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer8Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 9 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer9Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 10 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer10Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 11 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer11Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 12 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer12Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 13 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer13Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 14 - Organization 5 to the channel mychannel"
    # setGlobalsForPeer14Org5
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 6 peers --------------------------
    # echo "Join Peer 0 - Organization 6 to the channel mychannel"
    # setGlobalsForPeer0Org6
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    # echo "Join Peer 1 - Organization 6 to the channel mychannel"
    # setGlobalsForPeer1Org6
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    # echo "Join Peer 2 - Organization 6 to the channel mychannel"
    # setGlobalsForPeer2Org6
    # peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
}

updateAnchorPeers_1(){
    setGlobalsForPeer0Org1
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org2
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # setGlobalsForPeer0Org3
    # peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    # setGlobalsForPeer0Org4
    # peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # setGlobalsForPeer0Org5
    # peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    # setGlobalsForPeer0Org6
    # peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

joinChannel_2(){

    # ------------------- Join the organization 1 peers --------------------------
    echo "Join Peer 0 - Organization 1 to the channel mychannel2"
    setGlobalsForPeer0Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_2.block

    echo "Join Peer 1 - Organization 1 to the channel mychannel2"
    setGlobalsForPeer1Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_2.block


    # ------------------- Join the organization 3 peers --------------------------
    echo "Join Peer 0 - Organization 3 to the channel mychannel2"
    setGlobalsForPeer0Org3
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_2.block
    
    echo "Join Peer 1 - Organization 3 to the channel mychannel2"
    setGlobalsForPeer1Org3
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_2.block

}

updateAnchorPeers_2(){
    setGlobalsForPeer0Org1
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_2 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_2}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org3
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_2 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_2}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

joinChannel_3(){

    # ------------------- Join the organization 1 peers --------------------------
    echo "Join Peer 0 - Organization 1 to the channel mychannel3"
    setGlobalsForPeer0Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_3.block

    echo "Join Peer 1 - Organization 1 to the channel mychannel3"
    setGlobalsForPeer1Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_3.block


    # ------------------- Join the organization 3 peers --------------------------
    echo "Join Peer 0 - Organization 4 to the channel mychannel3"
    setGlobalsForPeer0Org4
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_3.block
    
    echo "Join Peer 1 - Organization 4 to the channel mychannel3"
    setGlobalsForPeer1Org4
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_3.block

}

updateAnchorPeers_3(){
    setGlobalsForPeer0Org1
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_3 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_3}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org4
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_3 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_3}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

joinChannel_4(){

    # ------------------- Join the organization 1 peers --------------------------
    echo "Join Peer 0 - Organization 1 to the channel mychannel4"
    setGlobalsForPeer0Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_4.block

    echo "Join Peer 1 - Organization 1 to the channel mychannel4"
    setGlobalsForPeer1Org1
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_4.block


    # ------------------- Join the organization 5 peers --------------------------
    echo "Join Peer 0 - Organization 5 to the channel mychannel4"
    setGlobalsForPeer0Org5
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_4.block
    
    echo "Join Peer 1 - Organization 5 to the channel mychannel4"
    setGlobalsForPeer1Org5
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME_4.block

}

updateAnchorPeers_4(){
    setGlobalsForPeer0Org1
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_4 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_4}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org5
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME_4 -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors_${CHANNEL_NAME_4}.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

removeOldCrypto

createChannel
joinChannel_1
updateAnchorPeers_1
# joinChannel_2
# updateAnchorPeers_2
# joinChannel_3
# updateAnchorPeers_3
# joinChannel_4
# updateAnchorPeers_4