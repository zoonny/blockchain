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

# git
- git init
- git clone
- git config --global user.name "zoonny"
- git config --global user.email "hyungii@naver.com"
- git config --global user.name "zoonny"
- echo "# blockchain" >> README.md
- git add README.md
- git commit -m 'first commit'
- git remote add README.md https://github.com/zoonny/blockchain.git
- git push -u README.md master

- git remote -v
- git remote add [repository_name] [url].git
- git remote remove [repository_name]
- git remote set-url [repository_name] [url].git

- git status

- git add .
- git commit -m 'commit'

- git push [repository_name] master
- git pull [repository_name] master
