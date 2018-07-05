#!/bin/bash

#cd ./build/docker/bin

peer channel create -o orderer:7050 -c channel47 -f ./channel.tx
peer channel join -b channel47.block
peer channel update -o orderer:7050 -c channel47 -f ./sampleorg.tx
peer chaincode install -n mycc -v 1.0 -p github.com/hyperledger/fabric/examples/chaincode/go/chaincode_example02
peer chaincode instantiate -o orderer:7050 -C channel47 -n mycc -v 1.0 -c '{"Args":["init","a","100","b","200"]}'
#peer chaincode query -C channel47 -n mycc -v 1.0 -c '{"Args":["query","a"]}'
#peer chaincode invoke -C channel47 -n mycc -v 1.0 -c '{"Args":["invoke","a","b","10"]}'
#peer chaincode query -C channel47 -n mycc -v 1.0 -c '{"Args":["query","a"]}'
#peer chaincode invoke -C channel47 -n mycc -v 1.0 -c '{"Args":["invoke","a","b","10"]}'
#peer chaincode query -C channel47 -n mycc -v 1.0 -c '{"Args":["query","a"]}'




