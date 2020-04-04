/*

Daily Coding Problem 3

This problem was asked by Google.

Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

For example, given the following Node class

```python
class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```

The following test should pass:

```python
node = Node('root', Node('left', Node('left.left')), Node('right'))
assert deserialize(serialize(node)).left.left.val == 'left.left'
```

*/

class Node {
  constructor(val, left = null, right = null) {
    this.val = val;
    this.left = left;
    this.right = right;
  }
}

const serialize = (tree) => {
    if (!tree) return '-';
    return `${tree.val} ${this.serialize(tree.left)} ${this.serialize(tree.right)}`;
}

const _deserialize = (s, pos) => {
  pos.pos++;
  if (!s[pos.pos] || s[pos.pos] === '-') {
    return null;
  }
  return new Node(s[pos.pos], _deserialize(s, pos), _deserialize(s, pos));
}

const deserialize = (s) => {
  const parts = s.split(/\s/);
  return _deserialize(parts, { pos : -1 });
}

exports.serialize = serialize;
exports.deserialize = deserialize;
exports.Node = Node;
