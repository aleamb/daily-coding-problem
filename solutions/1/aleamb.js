/*

Daily Coding Problem 1 

Solution

author: aleamb

Problem:

This problem was recently asked by Google.

Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?

*/

module.exports = {
    solution: function (list, k) {
        if (list === undefined || list == null || list.length < 2)
            return false;
        if (typeof k !== 'number')
            return false;
        for (var i = 0; i < list.length - 1; i++) {
            for (var j = i + 1; j < list.length; j++) {
                if (list[i] + list[j] === k) {
                    return true;
                }
            }
        }
        return false;
    }
}