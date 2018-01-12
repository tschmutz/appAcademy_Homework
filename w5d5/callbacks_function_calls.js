

window.setTimeout(function() {
  alert('Hammer Time!!!');
}, 5000);



function hammerTime(time) {
  window.setTimeout(function() {
    alert(`${time} is Hammer Time!!!`)
  });
}



const readline = require('readline');

const reader = readline.createInterface({

  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question('Would you like some tea?', function (response) {
    console.log(`You replied ${response}.`);
    reader.question('Would you like some biscuits?', function (response2) {
      console.log(`You replied ${response2}.`);
      
      const first = (response === 'yes') ? 'do' : 'dont';
      const second = (response2 === 'yes') ? 'do' : 'dont';

      console.log(`So you ${first} want tea and you ${second} want biscuits.`);
      reader.close();
    });
  });
}

function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();



Noodles.chase(Markov);
Noodles.chase.call(Markov, Noodles);
Noodles.chase.apply(Markov, [Noodles]);
