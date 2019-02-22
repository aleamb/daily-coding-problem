
const problem1Solution = require('./' + process.argv[3]);

test('Test 1', () => {
    expect(problem1Solution.solution([1, 2, 6, 9], 3)).toBe(true);
});

test('Test in problem description', () => {
    expect(problem1Solution.solution([10, 15, 3, 7], 17)).toBe(true);
});