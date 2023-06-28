// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;
contract T1 {
    uint16 public tokenId;
    address public admin;
    uint128 public saleStart;
    bool public saleStarted;
    uint16 public totalSupply;
    address[2] public buyers;
    bytes32 private password;
    bool public isPaused;

/*
{
	"storage": [
		{
			"astId": 3,
			"contract": "contracts/ent.sol:T1",
			"label": "tokenId",
			"offset": 0,
			"slot": "0",
			"type": "t_uint16"
		},
		{
			"astId": 5,
			"contract": "contracts/ent.sol:T1",
			"label": "admin",
			"offset": 2,
			"slot": "0",
			"type": "t_address"
		},
		{
			"astId": 7,
			"contract": "contracts/ent.sol:T1",
			"label": "saleStart",
			"offset": 0,
			"slot": "1",
			"type": "t_uint128"
		},
		{
			"astId": 9,
			"contract": "contracts/ent.sol:T1",
			"label": "saleStarted",
			"offset": 16,
			"slot": "1",
			"type": "t_bool"
		},
		{
			"astId": 11,
			"contract": "contracts/ent.sol:T1",
			"label": "totalSupply",
			"offset": 17,
			"slot": "1",
			"type": "t_uint16"
		},
		{
			"astId": 15,
			"contract": "contracts/ent.sol:T1",
			"label": "buyers",
			"offset": 0,
			"slot": "2",
			"type": "t_array(t_address)2_storage"
		},
		{
			"astId": 17,
			"contract": "contracts/ent.sol:T1",
			"label": "password",
			"offset": 0,
			"slot": "4",
			"type": "t_bytes32"
		},
		{
			"astId": 19,
			"contract": "contracts/ent.sol:T1",
			"label": "isPaused",
			"offset": 0,
			"slot": "5",
			"type": "t_bool"
		}
	],
	"types": {
		"t_address": {
			"encoding": "inplace",
			"label": "address",
			"numberOfBytes": "20"
		},
		"t_array(t_address)2_storage": {
			"base": "t_address",
			"encoding": "inplace",
			"label": "address[2]",
			"numberOfBytes": "64"
		},
		"t_bool": {
			"encoding": "inplace",
			"label": "bool",
			"numberOfBytes": "1"
		},
		"t_bytes32": {
			"encoding": "inplace",
			"label": "bytes32",
			"numberOfBytes": "32"
		},
		"t_uint128": {
			"encoding": "inplace",
			"label": "uint128",
			"numberOfBytes": "16"
		},
		"t_uint16": {
			"encoding": "inplace",
			"label": "uint16",
			"numberOfBytes": "2"
		}
	}
}
*/

}

