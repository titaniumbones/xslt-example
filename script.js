// collect all the synonyms

let syns = document.querySelectorAll("span.synonym");

// loop over them using the built-in foreach method
// requires arrow methods
// you could instead just do a reagular for---of loop
syns.forEach(thisSpan => {
  // wouldn eed to replace with a real synonym maker
  let ran = Math.floor(Math.random() * 10 );
  let apiCall = jQuery.get('https://jsonplaceholder.typicode.com/todos/' + ran,  // don't always return the exact same phrase
                           null, // no error handling

                           // callback function in which we set the content of the span to a part of the api response
                           // there are lots of ways to do this -- this is maybe the least complicated
                           // but can still lbe hard to understand.
                           function (response) {
                             console.log(response);
                             thisSpan.innerHTML = response.title; // what you put on the righthand side of the equals sign will depend on your API
                           },
                           'json');
 
});
