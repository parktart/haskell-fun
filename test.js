function roundAccurately(num) {
  return Number(Math.round(num + 'e2') + 'e-2')
}

console.log(roundAccurately(0.145))