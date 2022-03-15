
# Delete existing artifacts
rm genesis.block mychannel.tx
rm -rf ../../channel-artifacts/*

#Generate Crypto artifactes for organizations
# cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/



# System channel
SYS_CHANNEL="sys-channel"

# channel name defaults to "mychannel"
CHANNEL_NAME="mychannel"
CHANNEL_NAME_2="mychannel2"
CHANNEL_NAME_3="mychannel3"
CHANNEL_NAME_4="mychannel4"
CHANNEL_NAME_5="mychannel5"

echo $CHANNEL_NAME
echo $CHANNEL_NAME_2
echo $CHANNEL_NAME_3
echo $CHANNEL_NAME_4
echo $CHANNEL_NAME_5

# Generate System Genesis block for all channel
configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block

# # Generate System Genesis block for all channel
# configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block


# Generate channel configuration block and anchor peer for channel 1
configtxgen -profile Channel12 -configPath . -outputCreateChannelTx ./mychannel.tx -channelID $CHANNEL_NAME

echo "#######    Generating anchor peer update for Org1MSP for mychannel ##########"
configtxgen -profile Channel12 -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors_${CHANNEL_NAME}.tx -channelID $CHANNEL_NAME -asOrg Org1MSP

echo "#######    Generating anchor peer update for Org2MSP for mychannel ##########"
configtxgen -profile Channel12 -configPath . -outputAnchorPeersUpdate ./Org2MSPanchors_${CHANNEL_NAME}.tx -channelID $CHANNEL_NAME -asOrg Org2MSP

# echo "#######    Generating anchor peer update for Org3MSP  ##########"
# configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./Org3MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org3MSP

# echo "#######    Generating anchor peer update for Org4MSP  ##########"
# configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./Org4MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org4MSP

# echo "#######    Generating anchor peer update for Org5MSP  ##########"
# configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./Org5MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org5MSP

# echo "#######    Generating anchor peer update for Org6MSP  ##########"
# configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./Org6MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org6MSP



# Add by my own
# Generate channel configuration block and anchor peer for channel 2
# configtxgen -profile Channel13 -configPath . -outputCreateChannelTx ./mychannel2.tx -channelID $CHANNEL_NAME_2

# echo "#######    Generating anchor peer update for Org1MSP for mychannel2 ##########"
# configtxgen -profile Channel13 -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors_${CHANNEL_NAME_2}.tx -channelID $CHANNEL_NAME_2 -asOrg Org1MSP

# echo "#######    Generating anchor peer update for Org3MSP for mychannel2 ##########"
# configtxgen -profile Channel13 -configPath . -outputAnchorPeersUpdate ./Org3MSPanchors_${CHANNEL_NAME_2}.tx -channelID $CHANNEL_NAME_2 -asOrg Org3MSP


# ----------------------------------------------------------------
# Generate channel configuration block and anchor peer for channel 3
# configtxgen -profile Channel14 -configPath . -outputCreateChannelTx ./mychannel3.tx -channelID $CHANNEL_NAME_3

# echo "#######    Generating anchor peer update for Org1MSP for mychannel3 ##########"
# configtxgen -profile Channel14 -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors_${CHANNEL_NAME_3}.tx -channelID $CHANNEL_NAME_3 -asOrg Org1MSP

# echo "#######    Generating anchor peer update for Org4MSP for mychannel3 ##########"
# configtxgen -profile Channel14 -configPath . -outputAnchorPeersUpdate ./Org4MSPanchors_${CHANNEL_NAME_3}.tx -channelID $CHANNEL_NAME_3 -asOrg Org4MSP

# ----------------------------------------------------------------
# Generate channel configuration block and anchor peer for channel 4
# configtxgen -profile Channel15 -configPath . -outputCreateChannelTx ./mychannel4.tx -channelID $CHANNEL_NAME_4

# echo "#######    Generating anchor peer update for Org1MSP for mychannel4 ##########"
# configtxgen -profile Channel15 -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors_${CHANNEL_NAME_4}.tx -channelID $CHANNEL_NAME_4 -asOrg Org1MSP

# echo "#######    Generating anchor peer update for Org4MSP for mychannel4 ##########"
# configtxgen -profile Channel15 -configPath . -outputAnchorPeersUpdate ./Org5MSPanchors_${CHANNEL_NAME_4}.tx -channelID $CHANNEL_NAME_4 -asOrg Org5MSP