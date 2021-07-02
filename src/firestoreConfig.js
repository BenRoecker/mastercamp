import firebase from 'firebase/app'
import 'firebase/auth'
import 'firebase/firestore'
import 'firebase/storage'

const firebaseConfig = {
  apiKey: 'AIzaSyDMJUyusHMaKlayQX02RlnoNQWmUU13C3k',
  authDomain: 'epione-fcf9c.firebaseapp.com',
  projectId: 'epione-fcf9c',
  storageBucket: 'epione-fcf9c.appspot.com',
  messagingSenderId: '852786527226',
  appId: '1:852786527226:web:cedc12dd8721a6f7224243',
  measurementId: 'G-J1N0BRGEHJ'
}

const db = firebase
  .initializeApp(firebaseConfig)
  .firestore()

export default db
