/**
 * Sample n items from the array
 * @param {Array} list
 * @param {number} numberOfElements
 */
export default function sample(list, numberOfElements) {
  return Array(numberOfElements).fill().map(_ => list[Math.floor(Math.random() * list.length)])
}
