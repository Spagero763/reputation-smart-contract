# 🧠 Farcaster Reputation Drop (Smart Contract Only)

A simple and gas-efficient smart contract deployed on **Base Sepolia** that enables Farcaster users to claim onchain reputation after verifying their cast. This contract also maintains a fully onchain leaderboard.

---

## ✅ Contract Details

- **Network**: [Base Sepolia](https://sepolia.basescan.org/)
- **Contract Name**: `ReputationDrop`
- **Contract Address**: [`0x7C87ffda671ca892b03D875B03363216F6d95ccD`](https://sepolia.basescan.org/address/0x7C87ffda671ca892b03D875B03363216F6d95ccD)
- **Compiler Version**: `v0.8.24+commit.e11b9ed9`
- **License**: MIT

---

## 🔐 Contract Functions

| Function | Description |
|---------|-------------|
| `claimReputation(uint256 _reputation)` | Allows users to claim reputation once |
| `getReputation(address _user)` | Returns the claimed reputation of a user |
| `getAllClaimers()` | Returns a list of all claimers and their reputation |
| `totalClaimed()` | Returns the total number of claims |

---



