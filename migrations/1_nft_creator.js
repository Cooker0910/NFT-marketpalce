const TicketNFT = artifacts.require('TicketNFT')

module.export = function (deployer) {
  deployer.deploy(TicketNFT)
}