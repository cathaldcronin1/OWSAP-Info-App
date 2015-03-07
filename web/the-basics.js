/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var substringMatcher = function (strs) {
    return function findMatches(q, cb) {
        var matches, substrRegex;

        // an array that will be populated with substring matches
        matches = [];

        // regex used to determine if a string contains the substring `q`
        substrRegex = new RegExp(q, 'i');

        // iterate through the pool of strings and for any string that
        // contains the substring `q`, add it to the `matches` array
        $.each(strs, function (i, str) {
            if (substrRegex.test(str)) {
                // the typeahead jQuery plugin expects suggestions to a
                // JavaScript object, refer to typeahead docs for more info
                matches.push({value: str});
            }
        });

        cb(matches);
    };
};

var risks = ['Injections',
    'Broken Authentication and Session Management',
    'Cross-Site Scripting (XSS)',
    'Insecure Direct Object References',
    'Security Misconfiguration',
    'Sensitive Data Exposure',
    'Missing Function Level Access Control',
    'Cross-Site Request Forgery (CSRF)',
    'Using Components with Known Vulnerabilities',
    'Unvalidated Redirects and Forwards'];

$('#the-basics .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
},
{
    name: 'risks',
    displayKey: 'value',
    source: substringMatcher(risks)
});

