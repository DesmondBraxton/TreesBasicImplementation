import UIKit

// Treated like a normal node in a linked list
// Each node has a value and children
// A root node has no parent
// A leaf node has no children

public class TreeNode<T> {
    
    // This
      public var value: T
    //The variable of children returns aa array of elements if there can be multiple.
    //
      public var children: [TreeNode] = []

      public init(_ value: T) {
        self.value = value
          
      public func add(_ child: TreeNode) {
        children.append(child)
          }
    }
}

// DepthFirstTraversal
extension TreeNode {
    public func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach{
            $0.forEachDepthFirst(visit: visit)
        }
    }
}
//Example from the book

//let beverages = TreeNode("Beverages")

//let hot = TreeNode("Hot")
//let cold = TreeNode("Cold")
 
//beverages.add(hot)
//beverages.add(cold)





