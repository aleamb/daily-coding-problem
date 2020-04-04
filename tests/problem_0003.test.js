
const m = require('@solutions/problem_0003');

  test('Test in problem description', () => {

    const tree = new m.Node('root', new m.Node('left', new m.Node('left.left')), new m.Node('right'));

    expect(m.deserialize(m.serialize(tree)).left.left.val).toEqual('left.left');

  });
