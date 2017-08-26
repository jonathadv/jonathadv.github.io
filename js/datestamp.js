// JavaScript to generate a compact date representation

//
// format date as dd-mmm-yyyyy
// example: 12-Jan-1999
//
function date_ddmmmyyyy(date)
{
  var d = date.getDate();
  var m = date.getMonth() + 1;
  var y = date.getFullYear();

  // could use splitString() here 
  // but the following method is 
  // more compatible
  var mmm = 
    ( 1==m)?'Jan':( 2==m)?'Fev':(3==m)?'Mar':
    ( 4==m)?'Abr':( 5==m)?'Mai':(6==m)?'Jun':
    ( 7==m)?'Jul':( 8==m)?'Ago':(9==m)?'Set':
    (10==m)?'Out':(11==m)?'Nov':'Dez';

  return "" +
    (d<10?"0"+d:d) + " " + mmm + " " + y;
}


//
// get last modified date of the 
// current document.
//
function date_lastmodified()
{
  var lmd = document.lastModified;
  var s   = "Unknown";
  var d1;

  // check if we have a valid date
  // before proceeding
  if(0 != (d1=Date.parse(lmd)))
  {
    s = "" + date_ddmmmyyyy(new Date(d1));
  }

  return s;
}

//
// finally display the last modified date
// as DD-MMM-YYYY
//
document.writeln( 
  date_lastmodified() );

// End
