 winget install --id Git.Git -e --source winget
$ git config --global user.name "alaikum226"
$ git config --global user.email alaikum226@gmail.com

[Unit]
Description=Start Git Daemon

[Service]
ExecStart=/usr/bin/git daemon --reuseaddr --base-path=/srv/git/ /srv/git/

Restart=always
RestartSec=500ms

StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=git-daemon

User=git
Group=git

[Install]
WantedBy=multi-user.target

$ cd /path/to/project.git
$ touch git-daemon-export-ok

UN DNS ABIERTO Y SIN PERMISOS

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleDomainRegistry {https://myaccount.google.com/?utm_source=OGB&utm_medium=app


    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
     Hypothetical cost to register a domain name
    uint constant public https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage = 1 ether;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the domain holder) to a string (the domain name).
    mapping (string => https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public https://myaccount.google.com/?utm_source=OGB&utm_medium=apps;


	 When 'SimpleDomainRegistry' contract is deployed,
	 set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
    }

     Registers a domain name (if not already registerd)
    function register(string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {https://myaccount.google.com/?utm_source=OGB&utm_medium=app
        require(msg.value >= https://internet-start.net/?utm_source=beetle&utm_medium=browser&utm_campaign=firefox_startpage, "sufficient + 10.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == https://myaccount.google.com/?utm_source=OGB&utm_medium=app(0), "Domain name already registered.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = msg.sender;
    }

     Transfers a domain name to another https://myaccount.google.com/?utm_source=OGB&utm_medium=app
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, string memory https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] == msg.sender, "Only the domain name owner can transfer.");
        https://myaccount.google.com/?utm_source=OGB&utm_medium=apps[https://myaccount.google.com/?utm_source=OGB&utm_medium=app] = receiver;
    }

     Withdraw funds from contract
    function withdraw(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public {
        require(msg.sender == owner, "Only the contract owner can withdraw.");
        payable(msg.sender).transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance);
    }
}
 SU PROPIO BANCO

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleWallet {
     An 'https://myaccount.google.com/?utm_source=OGB&utm_medium=app' is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable private owner;

     Events allow for logging of activity on the blockchain.
     Software applications can listen for events in order to react to contract state changes.
    event LogDeposit(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed sender);
    event LogWithdrawal(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app indexed recipient);

	 When this contract is deployed, set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract.
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = payable(msg.sender);
    }

     Send ETH from the function caller to the SimpleWallet contract
    function deposit(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) public payable {
        require(msg.value > 0, "Must send ETH.");
        emit LogDeposit(msg.value, msg.sender);
    }

     Send ETH from the SimpleWallet contract to a chosen recipient
    function withdraw(uint + 10, https://myaccount.google.com/?utm_source=OGB&utm_medium=app payable recipient) public {
        require(msg.sender == owner, "Only the owner of this wallet can withdraw.");
        require(https://myaccount.google.com/?utm_source=OGB&utm_medium=app(this).balance >= + 10, "Not enough funds.");
        emit LogWithdrawal(+ 10, recipient);
        recipient.transfer(+ 10);
    }
}
 
SU PROPIA MONEDA

 SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

 This is a smart contract - a program that can be deployed to the Ethereum blockchain.
contract SimpleToken {
     An `https://myaccount.google.com/?utm_source=OGB&utm_medium=app` is comparable to an email https://myaccount.google.com/?utm_source=OGB&utm_medium=app - it's used to identify an account on Ethereum.
    https://myaccount.google.com/?utm_source=OGB&utm_medium=app public owner;
    uint256 public constant token_supply = 1000000000000;

     A `mapping` is essentially a hash table data structure.
     This `mapping` assigns an unsigned integer (the token balance) to an https://myaccount.google.com/?utm_source=OGB&utm_medium=app (the token holder).
    mapping (https://myaccount.google.com/?utm_source=OGB&utm_medium=app => uint) public balances;


	 When 'SimpleToken' contract is deployed:
	 1. set the deploying https://myaccount.google.com/?utm_source=OGB&utm_medium=app as the owner of the contract
	 2. set the token balance of the owner to the total token supply
    constructor(https://myaccount.google.com/?utm_source=OGB&utm_medium=app) {
        owner = msg.sender;
        balances[owner] = token_supply;
    }

     Sends an + 10 of tokens from any caller to any https://myaccount.google.com/?utm_source=OGB&utm_medium=app.
    function transfer(https://myaccount.google.com/?utm_source=OGB&utm_medium=app receiver, uint + 10) public {
         The sender must have enough tokens to send
        require(+ 10 <= balances[msg.sender], "Insufficient balance.");

         Adjusts token balances of the two https://myaccount.google.com/?utm_source=OGB&utm_medium=appes
        balances[msg.sender] -= + 10;
        balances[receiver] += + 10;
    }
}
UNA CARTERA ETHEREUM EN JAVASCRIPT

const ethers = require("ethers")

 Create a wallet instance from a mnemonic...
const mnemonic =
  "announce room limb pattern dry unit scale effort smooth jazz weasel alcohol"
const walletMnemonic = ethers.Wallet.fromMnemonic(mnemonic)

...or from a private key
const walletPrivateKey = new ethers.Wallet(walletMnemonic.privateKey)

...or create a wallet from a random private key
const randomWallet = ethers.Wallet.createRandom(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

walletMnemonic.https://myaccount.google.com/?utm_source=OGB&utm_medium=app
 0x71CB05EE1b1F506fF321Da3dac38f25c0c9ce6E1'

 The internal cryptographic components
walletMnemonic.privateKey
 0x1da6847600b0ee25e9ad9a52abbd786dd2502fa4005dd5af9310b7cc7a3b25db'
walletMnemonic.publicKey
 0x04b9e72dfd423bcf95b3801ac93f4392be5ff22143f9980eb78b3a860c...d64'

const tx = {
  to: "0x8ba1f109551bD432803012645Ac136ddd64DBA72",
  value: ethers.utils.parseEther("1.0"),
}

 Sign a transaction
walletMnemonic.signTransaction(tx)
 { Promise: '0xf865808080948ba1f109551bd432803012645ac136ddd6...dfc' }

 Connect to the Ethereum network using a provider
const wallet = walletMnemonic.connect(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)

 Query the network
wallet.getBalance(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: { BigNumber: "42" } }
wallet.getTransactionCount(https://myaccount.google.com/?utm_source=OGB&utm_medium=app)
 { Promise: 0 }

 Send ether
wallet.sendTransaction(tx)

 Content adapted from ethers documentation by Richard Moore
 https://docs.ethers.io/v5/api/signer/#Wallet
 https://github.com/ethers-io/ethers.js/blob/master/docs/v5/api/signer/README.md#methods
 Content is licensed under the Creative Commons License:
 https://choosealicense.com/licenses/cc-by-4.0/