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

# Export the Organization 7 ca.crt
export PEER0_ORG7_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org7.example.com/peers/peer0.org7.example.com/tls/ca.crt

# Export the Organization 8 ca.crt
export PEER0_ORG8_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org8.example.com/peers/peer0.org8.example.com/tls/ca.crt

# Export the Organization 9 ca.crt
export PEER0_ORG9_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org9.example.com/peers/peer0.org9.example.com/tls/ca.crt

# Export the Organization 10 ca.crt
export PEER0_ORG10_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org10.example.com/peers/peer0.org10.example.com/tls/ca.crt

# Export the CFG path
export FABRIC_CFG_PATH=${PWD}/artifacts/channel/config/

export CHANNEL_NAME=mychannel

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



# Function to set the Global for each peer in the organization 7
# ------------- Peer 0 of Organization 7 ---------------------------------
setGlobalsForPeer0Org7(){
    export CORE_PEER_LOCALMSPID="Org7MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp
    export CORE_PEER_ADDRESS=localhost:19051
}
# ------------- Peer 1 of Organization 7 ---------------------------------
setGlobalsForPeer1Org7(){
    export CORE_PEER_LOCALMSPID="Org7MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp
    export CORE_PEER_ADDRESS=localhost:19061
}
# ------------- Peer 2 of Organization 7 ---------------------------------
setGlobalsForPeer2Org7(){
    export CORE_PEER_LOCALMSPID="Org7MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp
    export CORE_PEER_ADDRESS=localhost:19071
}



# Function to set the Global for each peer in the organization 8
# ------------- Peer 0 of Organization 8 ---------------------------------
setGlobalsForPeer0Org8(){
    export CORE_PEER_LOCALMSPID="Org8MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp
    export CORE_PEER_ADDRESS=localhost:21051
}
# ------------- Peer 1 of Organization 8 ---------------------------------
setGlobalsForPeer1Org8(){
    export CORE_PEER_LOCALMSPID="Org8MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp
    export CORE_PEER_ADDRESS=localhost:21061 
}
# ------------- Peer 2 of Organization 8 ---------------------------------
setGlobalsForPeer2Org8(){
    export CORE_PEER_LOCALMSPID="Org8MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp
    export CORE_PEER_ADDRESS=localhost:21071
}




# Function to set the Global for each peer in the organization 9
# ------------- Peer 0 of Organization 9 ---------------------------------
setGlobalsForPeer0Org9(){
    export CORE_PEER_LOCALMSPID="Org9MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp
    export CORE_PEER_ADDRESS=localhost:23051
}
# ------------- Peer 1 of Organization 9 ---------------------------------
setGlobalsForPeer1Org9(){
    export CORE_PEER_LOCALMSPID="Org9MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp
    export CORE_PEER_ADDRESS=localhost:23061
}
# ------------- Peer 2 of Organization 9 ---------------------------------
setGlobalsForPeer2Org9(){
    export CORE_PEER_LOCALMSPID="Org9MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp
    export CORE_PEER_ADDRESS=localhost:23071
}



# Function to set the Global for each peer in the organization 10
# ------------- Peer 0 of Organization 10 ---------------------------------
setGlobalsForPeer0Org10(){
    export CORE_PEER_LOCALMSPID="Org10MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp
    export CORE_PEER_ADDRESS=localhost:25051 
}
# ------------- Peer 1 of Organization 10 ---------------------------------
setGlobalsForPeer1Org10(){
    export CORE_PEER_LOCALMSPID="Org10MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp
    export CORE_PEER_ADDRESS=localhost:25061 
}
# ------------- Peer 2 of Organization 10 ---------------------------------
setGlobalsForPeer2Org10(){
    export CORE_PEER_LOCALMSPID="Org10MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp
    export CORE_PEER_ADDRESS=localhost:25071 
}

createChannel(){
    rm -rf ./channel-artifacts/*
    setGlobalsForPeer0Org1
    
    peer channel create -o localhost:7050 -c $CHANNEL_NAME \
    --ordererTLSHostnameOverride orderer.example.com \
    -f ./artifacts/channel/${CHANNEL_NAME}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME}.block \
    --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

removeOldCrypto(){
    rm -rf ./api-1.4/crypto/*
    rm -rf ./api-1.4/fabric-client-kv-org1/*
    rm -rf ./api-2.0/org1-wallet/*
    rm -rf ./api-2.0/org2-wallet/*
}

# Join all the peer to the channel
joinChannel(){

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
    echo "Join Peer 0 - Organization 3 to the channel mychannel"
    setGlobalsForPeer0Org3
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 3 to the channel mychannel"
    setGlobalsForPeer1Org3
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 3 to the channel mychannel"
    setGlobalsForPeer2Org3
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block


    # ------------------- Join the organization 4 peers --------------------------
    echo "Join Peer 0 - Organization 4 to the channel mychannel"
    setGlobalsForPeer0Org4
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 4 to the channel mychannel"
    setGlobalsForPeer1Org4
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 4 to the channel mychannel"
    setGlobalsForPeer2Org4
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 5 peers --------------------------
    echo "Join Peer 0 - Organization 5 to the channel mychannel"
    setGlobalsForPeer0Org5
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 5 to the channel mychannel"
    setGlobalsForPeer1Org5
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 5 to the channel mychannel"
    setGlobalsForPeer2Org5
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 6 peers --------------------------
    echo "Join Peer 0 - Organization 6 to the channel mychannel"
    setGlobalsForPeer0Org6
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 6 to the channel mychannel"
    setGlobalsForPeer1Org6
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 6 to the channel mychannel"
    setGlobalsForPeer2Org6
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 7 peers --------------------------
    echo "Join Peer 0 - Organization 7 to the channel mychannel"
    setGlobalsForPeer0Org7
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 7 to the channel mychannel"
    setGlobalsForPeer1Org7
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 7 to the channel mychannel"
    setGlobalsForPeer2Org7
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 8 peers --------------------------
    echo "Join Peer 0 - Organization 8 to the channel mychannel"
    setGlobalsForPeer0Org8
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 8 to the channel mychannel"
    setGlobalsForPeer1Org8
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 8 to the channel mychannel"
    setGlobalsForPeer2Org8
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block




    # ------------------- Join the organization 9 peers --------------------------
    echo "Join Peer 0 - Organization 9 to the channel mychannel"
    setGlobalsForPeer0Org9
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 9 to the channel mychannel"
    setGlobalsForPeer1Org9
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 9 to the channel mychannel"
    setGlobalsForPeer2Org9
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



    # ------------------- Join the organization 10 peers --------------------------
    echo "Join Peer 0 - Organization 10 to the channel mychannel"
    setGlobalsForPeer0Org10
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    echo "Join Peer 1 - Organization 10 to the channel mychannel"
    setGlobalsForPeer1Org10
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    echo "Join Peer 2 - Organization 10 to the channel mychannel"
    setGlobalsForPeer2Org10
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block



}

updateAnchorPeers(){
    setGlobalsForPeer0Org1
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org2
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org3
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Org4
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org5
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org6
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org7
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org8
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org9
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Org10
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}

removeOldCrypto

createChannel
joinChannel
updateAnchorPeers