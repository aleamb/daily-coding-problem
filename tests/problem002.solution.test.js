
const problem2Solution = require('../solutions/problem_002');

test('Test in problem description', () => {
  expect(problem2Solution.solution([1, 2, 3, 4, 5])).toEqual([120, 60, 40, 30, 24]);
});

