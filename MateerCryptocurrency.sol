pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract MateerCryptocurrency is ERC20, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(string memory name, string memory symbol, uint8 decimals, uint256 30000000) ERC20(Mateer, JTM) public {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(MINTER_ROLE, _msgSender());
        _setupDecimals(18);
        _mint(_msgSender(), initialSupply * 10**uint(super.decimals()));
    }

    function mint(address to, uint256 amount) public {
        require(hasRole(MINTER_ROLE, _msgSender()), "MateerCryptocurrency: must have minter role to mint");
        _mint(0x86B65dFD2Ae4BEF3e5CFD9F59b10F9689Bee1013, 30000000);
    }
}
