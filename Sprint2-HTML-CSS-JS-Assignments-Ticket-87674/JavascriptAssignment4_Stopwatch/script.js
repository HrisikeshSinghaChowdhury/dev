var count = 0;
var clearTime;
var seconds = 0;
var millisecond = 0;

function stopWatch() {
  alert("Msg From StopWatch...Stop is Pressed");
  clearTimeout(clearTime);
}

function resetWatch() {
  alert("Msg From StopWatch...Reset is Pressed");
  setSecond(0);
  setMilliSecond(0);
  clearTimeout(clearTime);
}

function startWatch()
{
  millisecond = Number(getMilliSeconds());
  second = Number(getSeconds());

  if (millisecond >= 100)
  {
    second ++;
    millisecond = 0;
  }
  else
    millisecond ++;

  setSecond(second.toString());
  setMilliSecond(millisecond.toString());
  clearTime = setTimeout(startWatch, 1);
}

function setSecond(value) {
  document.getElementById("time-seconds").innerText = value;
}

function setMilliSecond(value) {
  if(getDigits(value) > 1)
    document.getElementById("time-milliseconds").innerText = value;
  else
    document.getElementById("time-milliseconds").innerText = "0" + value;
}

function getSeconds() {
  return document.getElementById("time-seconds").innerText;
}

function getMilliSeconds() {
  return document.getElementById("time-milliseconds").innerText;
}

function getDigits(value) {
  return value.toString().length;
}


