curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
exit
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
ls
la
ls
la
git init
git git remote add origin https://bitbucket.org/mediclare/svcr/src/master/
git remote add origin https://bitbucket.org/mediclare/svcr/src/master/
git pull origin master
ls
sudo chmod -R 777 uniclarebc/
ls
cd uniclarebc/
ls
./start_network.sh 
docker images
sudo setfacl -m user:$USER:rw /var/run/docker.sock
./start_network.sh 
ls
cd client
sudo apt install npm
ls
npm install
ls
node enrollAdmin_manufacturer.js 
npm install pm2 -g
sudo npm install pm2 -g
pm2 start server.js
pm2 logs
docker logs -f dev-peer0.Lordshire.example.com-college_chaincode-1.0 
pm2 stop server.js
node server.js
cd ../../
ls
git pull origin master
git stash
git pull origin master
cd uniclarebc/
ls
cd client/
la
node server.js
pm2 start server.js
cd ../
nano start_network.sh 
node server.js
ls
cd client
ls
node server.js
pm2 stop server.js
node server.js
pm2 restart server.js
docker exec -e "CORE_PEER_LOCALMSPID=CollegeMSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/College.example.com/users/Admin@College.example.com/msp" cli peer chaincode invoke -o orderer.example.com:7050 -C mychannel -n college_chaincode -c '{"function":"enrollStudentToCollege","Args":["Rohit","M","22","9783365925","Test","-----BEGIN CERTIFICATE-----\nMIICmTCCAj+gAwIBAgIUU+MKFDJ4PHZlW8I9HxFAZMvxMNEwCgYIKoZIzj0EAwIw\nfTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDVNh\nbiBGcmFuY2lzY28xHjAcBgNVBAoTFUxvcmRzaGlyZS5leGFtcGxlLmNvbTEhMB8G\nA1UEAxMYY2EuTG9yZHNoaXJlLmV4YW1wbGUuY29tMB4XDTE5MDgyOTExNTMwMFoX\nDTIwMDgyODExNTgwMFowQjEwMA0GA1UECxMGY2xpZW50MAsGA1UECxMEb3JnMTAS\nBgNVBAsTC2RlcGFydG1lbnQxMQ4wDAYDVQQDEwVSb2hpdDBZMBMGByqGSM49AgEG\nCCqGSM49AwEHA0IABEclBirKpTpq0/vL9TEspwsG2EnCOUmPnclnSgK+aBRzu4db\nwN8SbuDrMsfYg5/O6541vwSs//TBaXnfFCUxD7GjgdcwgdQwDgYDVR0PAQH/BAQD\nAgeAMAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFMa9kxGrSM0pJXMMrT4P2/ZCmTF1\nMCsGA1UdIwQkMCKAIPWBoW3zJfs8Hhn9OHP1xWNkGwJFvQRLTGFwVWqZaUSzMGgG\nCCoDBAUGBwgBBFx7ImF0dHJzIjp7ImhmLkFmZmlsaWF0aW9uIjoib3JnMS5kZXBh\ncnRtZW50MSIsImhmLkVucm9sbG1lbnRJRCI6IlJvaGl0IiwiaGYuVHlwZSI6ImNs\naWVudCJ9fTAKBggqhkjOPQQDAgNIADBFAiEAg4WDyUAPR14ICzA7L6g2iKUEptUO\nIonZ+BzwR9jVWnkCIASCMCXYKJOchKmqJIfolyP0Bif7qTsXnkzKi4fGzCap\n-----END CERTIFICATE-----\n"]}'  
ls
cd ../
ls
docker rm -f $(docker ps -aq)
docker rmi dev-peer0.lordshire.example.com-college_chaincode-1.0-922e96a96a21738c42036739870035af67209f0bb31556f06a2384a69dec998c:latest 
ls
./start_network.sh
cd ../
la
sudo chmod -R 777 uniclarebc/
cd uniclarebc/
./start_
./start_network.sh 
docker exec -e "CORE_PEER_LOCALMSPID=CollegeMSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/College.example.com/users/Admin@College.example.com/msp" cli peer chaincode invoke -o orderer.example.com:7050 -C mychannel -n college_chaincode -c '{"function":"enrollStudentToCollege","Args":["Rohit","M","22","9783365925","Test","-----BEGIN CERTIFICATE-----\nMIICmTCCAj+gAwIBAgIUU+MKFDJ4PHZlW8I9HxFAZMvxMNEwCgYIKoZIzj0EAwIw\nfTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDVNh\nbiBGcmFuY2lzY28xHjAcBgNVBAoTFUxvcmRzaGlyZS5leGFtcGxlLmNvbTEhMB8G\nA1UEAxMYY2EuTG9yZHNoaXJlLmV4YW1wbGUuY29tMB4XDTE5MDgyOTExNTMwMFoX\nDTIwMDgyODExNTgwMFowQjEwMA0GA1UECxMGY2xpZW50MAsGA1UECxMEb3JnMTAS\nBgNVBAsTC2RlcGFydG1lbnQxMQ4wDAYDVQQDEwVSb2hpdDBZMBMGByqGSM49AgEG\nCCqGSM49AwEHA0IABEclBirKpTpq0/vL9TEspwsG2EnCOUmPnclnSgK+aBRzu4db\nwN8SbuDrMsfYg5/O6541vwSs//TBaXnfFCUxD7GjgdcwgdQwDgYDVR0PAQH/BAQD\nAgeAMAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFMa9kxGrSM0pJXMMrT4P2/ZCmTF1\nMCsGA1UdIwQkMCKAIPWBoW3zJfs8Hhn9OHP1xWNkGwJFvQRLTGFwVWqZaUSzMGgG\nCCoDBAUGBwgBBFx7ImF0dHJzIjp7ImhmLkFmZmlsaWF0aW9uIjoib3JnMS5kZXBh\ncnRtZW50MSIsImhmLkVucm9sbG1lbnRJRCI6IlJvaGl0IiwiaGYuVHlwZSI6ImNs\naWVudCJ9fTAKBggqhkjOPQQDAgNIADBFAiEAg4WDyUAPR14ICzA7L6g2iKUEptUO\nIonZ+BzwR9jVWnkCIASCMCXYKJOchKmqJIfolyP0Bif7qTsXnkzKi4fGzCap\n-----END CERTIFICATE-----\n"]}'  
docker exec -e "CORE_PEER_LOCALMSPID=CollegeMSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/College.example.com/users/Admin@College.example.com/msp" cli peer chaincode invoke -o orderer.example.com:7050 -C mychannel -n college_chaincode -c '{"function":"getAllStudents","Args":[""]}'  
docker exec -e "CORE_PEER_LOCALMSPID=CollegeMSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/College.example.com/users/Admin@College.example.com/msp" cli peer chaincode invoke -o orderer.example.com:7050 -C mychannel -n college_chaincode -c '{"function":"searchStudent","Args":["-----BEGIN CERTIFICATE-----\nMIICmTCCAj+gAwIBAgIUU+MKFDJ4PHZlW8I9HxFAZMvxMNEwCgYIKoZIzj0EAwIw\nfTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDVNh\nbiBGcmFuY2lzY28xHjAcBgNVBAoTFUxvcmRzaGlyZS5leGFtcGxlLmNvbTEhMB8G\nA1UEAxMYY2EuTG9yZHNoaXJlLmV4YW1wbGUuY29tMB4XDTE5MDgyOTExNTMwMFoX\nDTIwMDgyODExNTgwMFowQjEwMA0GA1UECxMGY2xpZW50MAsGA1UECxMEb3JnMTAS\nBgNVBAsTC2RlcGFydG1lbnQxMQ4wDAYDVQQDEwVSb2hpdDBZMBMGByqGSM49AgEG\nCCqGSM49AwEHA0IABEclBirKpTpq0/vL9TEspwsG2EnCOUmPnclnSgK+aBRzu4db\nwN8SbuDrMsfYg5/O6541vwSs//TBaXnfFCUxD7GjgdcwgdQwDgYDVR0PAQH/BAQD\nAgeAMAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFMa9kxGrSM0pJXMMrT4P2/ZCmTF1\nMCsGA1UdIwQkMCKAIPWBoW3zJfs8Hhn9OHP1xWNkGwJFvQRLTGFwVWqZaUSzMGgG\nCCoDBAUGBwgBBFx7ImF0dHJzIjp7ImhmLkFmZmlsaWF0aW9uIjoib3JnMS5kZXBh\ncnRtZW50MSIsImhmLkVucm9sbG1lbnRJRCI6IlJvaGl0IiwiaGYuVHlwZSI6ImNs\naWVudCJ9fTAKBggqhkjOPQQDAgNIADBFAiEAg4WDyUAPR14ICzA7L6g2iKUEptUO\nIonZ+BzwR9jVWnkCIASCMCXYKJOchKmqJIfolyP0Bif7qTsXnkzKi4fGzCap\n-----END CERTIFICATE-----\n"]}'  
cd client
la
ls
pm2 stop server.js
node server.js
s
ls
sudo rm -r wallet
ls
node enrollAdmin_manufacturer.js 
node server.js
ls
cd uniclarebc/
cd client/
ls
pm2 start server.js
ls
cd uni
cd uniclarebc/
ls
cd client
ls
pm2 logs
ls
cd uniclarebc/
ls
cd client
ls
pm2 logs
ls
nano server.js
ls
pm2 restart server.js
pm2 logs
nano server.js
pm2 restart server.js
pm2 logs
nano server.js
pm2 restart server.js
pm2 logs
nano server.js
pm2 restart server.js
pm2 logs
nano server.js
pm2 restart server.js
pm2 logs
ls
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
ls
cd uniclarebc/
ls
cd client/
ls
pm2 restart server.js
pm2 logs
pm2 stop server.js
node server.js
.
ls
cd uniclarebc/
ls
cd client
ls
pm2 restart server.js
pm2 logs
pm2 restart server.js
pm2 logs
node server.js
ps -ef | grep node
pkill -f node
sudo pkill -f node
pm2 restart server.js
pm2 logs
