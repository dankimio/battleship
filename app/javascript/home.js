/**
 * Sample n items from the array
 * @param {Array} list
 * @param {number} numberOfElements
 */
function sample(list, numberOfElements) {
  return Array(numberOfElements).fill().map(_ => list[Math.floor(Math.random() * list.length)])
}

document.addEventListener('DOMContentLoaded', () => {
  const mainPlayerAtoms = document.querySelectorAll('#home .board-main .board-atom')
  sample(mainPlayerAtoms, 10).forEach(atom => atom.classList.toggle('miss'))

  const opponentAtoms = document.querySelectorAll('#home .board-opponent .board-atom')
  sample(opponentAtoms, 10).forEach(atom => atom.classList.toggle('miss'))
  sample(opponentAtoms, 3).forEach(atom => atom.classList.toggle('hit'))
})
