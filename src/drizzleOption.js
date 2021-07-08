import Ordonnance from '@/contracts/Ordonnance.json'
const options = {
  web3: {
    block: false,
    fallback: {
      type: 'ws',
      url: 'ws://127.0.0.1:8545'
    }
  },
  // The contracts to monitor
  contracts: [Ordonnance],
  events: {
    Ordonnance: ['PrescriptionCreated']
  },
  polls: {
    // check accounts ever 15 seconds
    accounts: 15000
  }
}
export default options
