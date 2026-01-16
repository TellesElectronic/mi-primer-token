## Mi Primer Contrato Inteligente - Hardhat + Sepolia Telles

Contrato 0xcC5A68851591202cB887Af22EB4FbEb990BC75fA
https://sepolia.etherscan.io/address/0xcC5A68851591202cB887Af22EB4FbEb990BC75fA#code
## Descripción
Este es un contrato inteligente simple que permite almacenar y modificar un nombre. Desarrollado como ejercicio práctico del curso de desarrollo Web3 en UPTA (Universidad Politécnica Territorial del Estado Aragua).
## 🚀 Tecnologías Utilizadas
- **Solidity ^0.8.20 **
- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
