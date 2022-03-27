import sample from './helpers/sample'

document.addEventListener('turbo:load', () => {
  const mainPlayerAtoms = document.querySelectorAll('#home .board-main .board-atom')
  sample(mainPlayerAtoms, 10).forEach(atom => atom.classList.toggle('miss'))

  const opponentAtoms = document.querySelectorAll('#home .board-opponent .board-atom')
  sample(opponentAtoms, 10).forEach(atom => atom.classList.toggle('miss'))
  sample(opponentAtoms, 3).forEach(atom => atom.classList.toggle('hit'))
})
