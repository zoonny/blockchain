# docker
- install docker toolbox
- execute docker
    - docker pull ubuntu:latest
    - docker create ubuntu:latest
    - docker run ubuntu:latest
- docker command
    - docker image list
    - docker image rm
    - 

# bitcoin
- install ubuntu (virtual box or docker)
- download source
    - git clone https://github.com/bitcoin/bitcoin.git
- download dependency library
    - sudo apt-get update
    - sudo apt-get upgrade
    - sudo apt-get install build-essential automake pkg-config libevent-dev
    - sudo apt-get install bsdmainutils
    - sudo apt-get install libtool autotools-dev autoconf
    - sudo apt-get install openssl libssl-dev
    - sudo apt-get install libboost-all-dev libboost-dev libboost-chrono-dev
    - sudo apt-get install libboost-filesystem-dev libboost-program-options-dev
    - sudo apt-get install libboost-system-dev libboost-test-dev libboost-thread-dev
    - sudo apt-get install libqrencode-dev
    - sudo apt-get install libminiupnpc-dev
    - sudo apt-get install curl git
    - sudo apt-get install g++-mingw-w64-x86-64
    - sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev
    - sudo apt-get install qttools5-dev-tools libprotobuf-dev protobuf-compiler
- bitcoin compile
    - cd bitcoin
    - cd depends
    - sudo make HOST=x86_64-w64-mingw32
    - cd ..
    - ./autogen.sh
        - if dependency error : 
            - ./configure LDFLAGS="-L/home/ktds/bc/src/bitcoin/db4/lib/" CPPFLAGS="-I/home/ktds/bc/src/bitcoin/db4/include/"
    - ./configure
    - sudo make install
- install berkley db
    - sudo add-apt-repository ppa:bitcoin/bitcoin
    - sudo apt-get update
    - sudo apt-get install libdb4.8-dev
    - sudo apt-get install libdb4.8++-dev
        - if error : 
            - manual install
- bitcoin start
    - bitcoind -regtest -daemon

# Boostrap upgrade
- dpkg -s libboost-dev | grep 'Version' 
- sudo apt-get --purge remove libboost-dev libboost-doc
- sudo apt-get --purge remove libboost-dev
- sudo apt-get --purge remove libboost-all-dev
- sudo apt autoremove
- wget https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.bz2
- tar xvjf boost_1_68_0.tar.bz2
- cd boost_1_64_0
- sudo apt-get update
- sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev
- ./bootstrap.sh --prefix=/usr/local
- ./b2
- sudo ./b2 install
- dpkg -s libboost-dev | grep 'Version' 

# go ethereum
- src
    - https://ethereum.github.io/go-ethereum/install/#build-it-from-source-code
    - 
- package
    - https://ethereum.github.io/go-ethereum/downloads
    - sudo add-apt-repository -y ppa:ethereum/ethereum
    - sudo apt-get update
    - sudo apt-get install ethereum
    - sudo apt-get update
    - sudo apt-get install ethereum-unstable
    - sudo geth
- new account
    - geth --datadir "/home/ktds/bc/git/blockchain/geth/data" account new
         - Address: {65eb093ae771c2b1c98294934e5366f9f75e8576} 
- list account
    - geth --datadir "/home/ktds/bc/git/blockchain/geth/data" account list
- custom ethereum network
    - write CustomGenesis.json
    - create block
        - geth --datadir "/home/ktds/bc/git/blockchain/geth/data" init "/home/ktds/bc/git/blockchain/geth/CustomGenesis.json"
    - execute ethereum network
        - geth --identity "privateNetwork" --datadir "/home/ktds/bc/git/blockchain/geth/data" --port "30303" --rpc --rpcaddr 0.0.0.0 --rpcport "8123" --rpccorsdomain "*" --nodiscover --networkid 1900 --nat "any" --rpcapi "db, eth, net, web3, miner" console
    - eth.accounts
    - eth.getBalance(eth.accounts[0])
    - eth.getBalance(eth.coinbase)
    - eth.getBalance()   //wei unit print
    - web3.fromwei(eth.getBalance(eth.coinbase), "ether")    // wei => ether unit print
    - miner.start()
    - miner.stop()
    - connect
        - geth attach http://127.0.0.1:8123
- ethereum gui wallet
    - mist
    - https://github.com/ethereum/mist/releases

# go
- install
    - https://golang.org/dl/
    - wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
    - ll go*.gz
    - sudo tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz
    - ll /usr/local | grep go
    - sudo ln -s /usr/local/go/bin/go /usr/local/bin/go
    - sudo ln -s /usr/local/go/bin/godoc /usr/local/bin/godoc
    - sudo ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt
    - which go
    - go version

- test
    - go run test.go
    - go build test.go
    - go env
    - set GOPATH=/home/ktds/bc/git/blockchain/go
    - GOROOT : install directory
        - GOROOT/bin : go exe file
        - GOROOT/pkg : standard package
        - GOPATH/pkg : 3rd party package
    - GOPATH : application directory
    - editor : Atom
    - web base go edit and test
        - http://play.golang.org

# git
- git init
- git clone
- git config --global user.name "zoonny"
- git config --global user.email "hyungii@naver.com"
- git config --global user.name "zoonny"
- echo "# blockchain" >> README.md
- git add README.md
- git commit -m 'first commit'
- git remote add origin https://github.com/zoonny/blockchain.git
- git push -u origin master

- git remote -v
- git remote add [repository_name] [url].git
- git remote remove [repository_name]
- git remote set-url [repository_name] [url].git

- git status

- git add .
- git commit -m 'commit'

- git push origin master
- git pull origin master

# virtualbox
- port forward
    - ubuntu ifconfig : 10.0.2.15
    - windows ipconfig : 192.168.56.1 or 192.168.99.1
    - host ip : windows ip
    - guest ip : ubuntu ip
    - port : 4200
