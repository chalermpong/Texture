//
//  TestTableNodeVC.swift
//  TestApp
//
//  Created by Chalermpong Satayavibul on 6/12/2563 BE.
//

import Foundation
import AsyncDisplayKit

class TestTableNodeVC: ASDKViewController<ASTableNode> {
    
    override init() {
        super.init(node: ASTableNode())
        node.dataSource = self
        node.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TestTableNodeVC: ASTableDelegate {
    func tableNode(_ tableNode: ASTableNode, didSelectRowAt indexPath: IndexPath) {
        tableNode.reloadRows(at: [IndexPath(row: 0, section: 0)], with: .none)
        
    }
}

extension TestTableNodeVC: ASTableDataSource {
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        return {
            CellNode()
        }
    }
    
    class CellNode: ASCellNode {
        let node = ASDisplayNode()
        override init() {
            super.init()
            automaticallyManagesSubnodes = true
            node.backgroundColor = .blue
            node.style.width = ASDimension(unit: .points, value: 100)
            node.style.height = ASDimension(unit: .points, value: 100)
        }
        override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
            return ASWrapperLayoutSpec(layoutElement: node)
        }
        
        deinit {
            print("")
        }
    }
}

