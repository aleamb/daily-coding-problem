
const problem3Solution = require('./' + process.argv[3]);

test('Test 1', () => {
  expect(problem3Solution.solution([1, 2, 6, 9], 3)).toBe(true);
});
