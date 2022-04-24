//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit

class GameScene: SKScene {
    let regions = Regions()
    let bridges = Bridges()
    var allRegions: [RegionNode] = []
    var allBridges: [BridgeNode] = []
    var gameStart: Bool = false
    var actualRegion: RegionNode?
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.river
        self.anchorPoint = Auxiliary.anchorPoint
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: self.size.width * 0.11, height: self.size.height * 0.09)
        logo.anchorPoint = Auxiliary.anchorPoint
        logo.position = CGPoint(x: 10, y: -15)
        logo.zPosition = 1
        addChild(logo)
        regions.configureRegions(viewWidth: self.size.width, viewHeigth: self.size.height)
        bridges.configureBridges(viewWidth: self.size.width, viewHeigth: self.size.height)
        
        addChild(regions.r1)
        addChild(regions.r2)
        addChild(regions.r3)
        addChild(regions.r4)
        allRegions = [regions.r1, regions.r2, regions.r3, regions.r4]
        
        addChild(bridges.a)
        addChild(bridges.b)
        addChild(bridges.c)
        addChild(bridges.d)
        addChild(bridges.e)
        addChild(bridges.f)
        addChild(bridges.g)
        allBridges = [bridges.a, bridges.b, bridges.c, bridges.d, bridges.e, bridges.f, bridges.g]
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        if(gameStart || start()) {
            print(self.actualRegion!.name!)
            swapRegions()
            updateEdges(region: actualRegion!)
        }
    }
    //If a region was selected we disable all regions
    func disableRegions() {
        for i in 0..<allRegions.count {
            allRegions[i].isUserInteractionEnabled = false
        }
    }
    
    func wasChoose() -> RegionNode? {
        for i in 0..<allRegions.count {
            if allRegions[i].state == .black {
                self.gameStart = true
                allRegions[i].state = .white
                disableRegions()
                return allRegions[i]
            }
        }
        return nil
    }
    
    func updateRegion(region: inout RegionNode) {
        if region.state == .white {
            region.background.texture = SKTexture(imageNamed: "region\(region.name!)")
        } else {
            region.background.texture = SKTexture(imageNamed: "region\(region.name!)B")
        }
    }
    
    func updateEdges(region: RegionNode) {
        var isPainted = [0, 0, 0, 0, 0, 0, 0]
        for edge in region.bridges {
            for i in 0..<allBridges.count {
                let bridge = childNode(withName: allBridges[i].name!) as! BridgeNode
                if bridge.state == .black {
                    bridge.isUserInteractionEnabled = false
                    bridge.background.texture = SKTexture(imageNamed: "edge\((bridge.name!).uppercased())P")
                } else if bridge.name! == edge {
                    bridge.state = .white
                    bridge.isUserInteractionEnabled = true
                    bridge.background.texture = SKTexture(imageNamed: "edge\((bridge.name!).uppercased())O")
                    isPainted[i] = 1
                } else if isPainted[i] == 0 {
                    bridge.state = .gray
                    bridge.isUserInteractionEnabled = false
                    bridge.background.texture = SKTexture(imageNamed: "edge\((bridge.name!).uppercased())G")
                }
                allBridges[i] = bridge
            }
        }
    }
    func start() -> Bool {
        let region = wasChoose()
        guard var actualRegion = region else { return false }
        actualRegion = childNode(withName: actualRegion.name!) as! RegionNode
        actualRegion.state = .black
        actualRegion.background.texture = SKTexture(imageNamed: "region\(actualRegion.name!)B")
        self.actualRegion = actualRegion
        updateRegion(region: &actualRegion)
        return true
    }
    
    func gameOver() -> Bool {
        for edge in self.actualRegion!.bridges {
            if let bridge = childNode(withName: "\(edge)") as? BridgeNode {
                if bridge.state == .gray || bridge.state == .white {
                    return false
                }
            }
        }
        return true
    }
    func swapRegions() {
        var edgeChanged: BridgeNode? = nil
        for e in allBridges {
            if e.changed {
                edgeChanged = e
            }
        }
        guard var edge = edgeChanged else { return }
        edge = childNode(withName: edge.name!) as! BridgeNode
        edge.changed = false
        var u = childNode(withName: "\(edge.regions[0])") as! RegionNode
        var v = childNode(withName: "\(edge.regions[1])") as! RegionNode
        if u.name! == self.actualRegion?.name! {
            u.state = .white
            updateRegion(region: &u)
            
            v.state = .black
            updateRegion(region: &v)
            self.actualRegion = v
        } else {
            u.state = .black
            updateRegion(region: &u)
            
            v.state = .white
            updateRegion(region: &v)
            self.actualRegion = u
        }
    }
    
}
