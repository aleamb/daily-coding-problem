
const problem1Solution = require('./problem_1');

test('Test 1', () => {
  expect(problem1Solution.solution([1, 2, 6, 9], 3)).toBe(true);
});

test('Test in problem description', () => {
  expect(problem1Solution.solution([10, 15, 3, 7], 17)).toBe(true);
});