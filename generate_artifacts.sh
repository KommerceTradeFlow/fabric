#!/bin/bash

cd ./build/docker/bin

./configtxgen -profile SampleSingleMSPBFTsmart -channelID jcschannel -outputBlock ../../../genesisblock
./configtxgen -profile SampleSingleMSPChannel -outputCreateChannelTx ../../../channel.tx -channelID channel47
./configtxgen -profile SampleSingleMSPChannel -outputAnchorPeersUpdate ../../../sampleorg.tx -channelID channel47 -asOrg SampleOrg
