function roundAccuratelyToTwo(num) {
  return Number(Math.round(num + 'e2') + 'e-2')
}

console.log(roundAccuratelyToTwo(0.145)) // 0.15 Yay!


function roundAccurately(num, precision) {
  return Number(Math.round(num + 'e' + precision) + 'e' + precision * -1)
}

roundAccurately(1.005, 2) // 1.01 Yay!
roundAccurately(12345, -2) // 12300
console.log(roundAccurately(0.145, 2)) // 0.15 Yay!
