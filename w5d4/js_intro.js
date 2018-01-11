function madLib(verb, adj, noun) {
  console.log(`We shall ${verb} the ${adj} ${noun}`)
}


function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  array = array 
  
  for (var i = 0; i < array.length; i++) {
  
    if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      console.log(array[i])
    }
  }
}



function isPrime(num) {
  if (num < 2) {
    return false;
  }
  for (var i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  
  return true;
}


function firstNPrimes(n) {
  let primes = []
  
  for (var i = 2; primes.length < n: i++) {
    if isPrime(i) {
      primes.push(i)
    }
  }
  
  return primes 
}


function sumOfNPrimes(n) {
  let primes = firstNPrimes(n)
  let sum = 0
  
  for (var i = 0; i < primes.length; i++) {
    sum += primes[i]
  }
  
  return sum
}



function titleize(names, callback) {
  let titles = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titles)
}


titleize(['John','Jacob','Steve'], (names) => {
  names.forEach(name => console.log(name));
})


function Elephant(name, height, tricks) {
  self.name = name;
  self.height = height;
  this.tricks = tricks;
}
Elephant.prototype.trumpet = function () {
  console.log(`${name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`)
}

Elephant.prototype.grow = function () {
  self.height += 2
}


Elephant.prototype.addTrick(trick) = function () {
  self.trick.push(trick)
}

Elephant.prototype.play = function () {
  trickNum = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickNum]}!`)
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by`)
}


function dinerBreakfast() {
  
  let order = 'Id like cheesy scrambled eggs please';
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
};

