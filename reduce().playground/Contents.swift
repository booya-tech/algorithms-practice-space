let names = ["Taylor", "Paul", "Adele"]
// (0) means -> the initial value , $0, $1 means -> the accumulated value, the current element in sequence.
let count = names.reduce(0) { $0 + $1.count }
print(count)
