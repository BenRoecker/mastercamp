const Ordonnance = artifacts.require("Ordonnance");
module.exports = function (deployer) {
 deployer.deploy(Ordonnance);
};