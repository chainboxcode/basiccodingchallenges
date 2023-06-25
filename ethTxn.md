# Ethereum Transactions
Which is the following is not in an Ethereum transaction -
- Nounce
- Value
- Function
- From

A transaction consists of the following components - 
| Component | Transaction | 
| :------: | :-------: | 
| from | the address of the sender, that will be signing the transaction. This will be an externally-owned account as contract accounts cannot send transactions. |
| recipient | the receiving address (if an externally-owned account, the transaction will transfer value. If a contract account, the transaction will execute the contract code) |
| signature | the identifier of the sender. This is generated when the sender's private key signs the transaction and confirms the sender has authorized this transaction |
| nonce | a sequentially incrementing counter which indicates the transaction number from the account |
| value | amount of ETH to transfer from sender to recipient (denominated in WEI, where 1ETH equals 1e+18wei) |
| data | optional field to include arbitrary data |
| gasLimit | the maximum amount of gas units that can be consumed by the transaction. The EVM specifies the units of gas required by each computational step |
| maxPriorityFeePerGas | the maximum price of the consumed gas to be included as a tip to the validator |
| maxFeePerGas | the maximum fee per unit of gas willing to be paid for the transaction (inclusive of baseFeePerGas and maxPriorityFeePerGas) |

[Docs](https://ethereum.org/en/developers/docs/transactions/)

Hence in the question asked, Function is not part of the transaction. 

Example - 
```json
{
  "from": "0xEA674fdDe714fd979de3EdF0F56AA9716B898ec8",
  "to": "0xac03bb73b6a9e108530aff4df5077c2b3d481e5a",
  "gasLimit": "21000",
  "maxFeePerGas": "300",
  "maxPriorityFeePerGas": "10",
  "nonce": "0",
  "value": "10000000000"
}
```

## About Transactions 

In Ethereum, a transaction represents an action or operation initiated by an external account (EOA) or a smart contract. It is a fundamental unit of interaction on the Ethereum network, allowing users to send Ether (ETH) or trigger smart contract functions.

Transactions, which change the state of the EVM, need to be broadcast to the whole network. Any node can broadcast a request for a transaction to be executed on the EVM; after this happens, a validator will execute the transaction and propagate the resulting state change to the rest of the network.

Transactions require a fee and must be included in a validated block.
