# Governance Smart Contract

**Author:** Miguel Torres 
**GitHub:** [MTC051290](https://github.com/mtc051290)

## Description

This project contains the smart contract and deployment configuration for the governance DApp built on the Ethereum Sepolia testnet. The smart contract enables users to submit proposals, and is a core part of the Full Stack Blockchain Engineer Challenge.

The smart contract is written in Solidity and deployed using Hardhat in combination with the Infura service.

## Features

- Smart contract to store and retrieve proposals
- Deployment via Hardhat
- Sepolia network support via Infura
- Secure configuration through `.env`

## Stack

- Solidity
- Hardhat
- Node.js
- Infura
- dotenv

## Setup Instructions

1. **Clone the repository:**

```bash
git clone https://github.com/masdfa/governance-sc.git
cd governance-sc
```

2. **Install dependencies:**

```bash
npm install
```

3. **Configure environment variables:**

Create a `.env` file in the root of the project and include the following variables:

```env
PRIVATE_KEY=your_metamask_private_key
INFURA_API_KEY=your_infura_api_key
```

⚠️ Never commit or share your private key or API key.

4. **Deploy to Sepolia network:**

```bash
npx hardhat run --network sepolia scripts/deploy.js
```

## Notes

- Make sure your MetaMask wallet has Sepolia ETH.
- Infura project ID must be valid and authorized to access Sepolia.
- You can explore the contract on [Sepolia Etherscan](https://sepolia.etherscan.io) after deployment.

## Future Improvements

- Add unit and integration tests for the smart contract
- Add contract verification via Etherscan plugin
- Integrate deployment with CI/CD pipelines
- Add governance logic like voting and quorum tracking
