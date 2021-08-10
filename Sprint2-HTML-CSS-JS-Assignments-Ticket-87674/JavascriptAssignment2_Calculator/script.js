// Infinity error that is division by zero not handled
// Consecutive operators are also not handled
var output = "";
var operator = document.getElementsByClassName("operator");

for(var i = 0;i<operator.length;i++) {
  operator[i].addEventListener('click',function() {
    if(this.id == "equal") {
      var result = eval(getOutput());
      setOutput(result);
      output = result;
    }
    else
    {
      output = output + this.id;
      setOutput(output);
    }

  });
}

var number = document.getElementsByClassName("number");
for(var i = 0;i<number.length;i++) {
  number[i].addEventListener('click',function(){
    output = output + this.id;
    setOutput(output);
  });

}

function setOutput(num) {
  document.getElementById("data-input").value = num;
}
function getOutput() {
  return document.getElementById("data-input").value;
}
