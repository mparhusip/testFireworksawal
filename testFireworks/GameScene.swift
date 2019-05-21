//
//  GameScene.swift
//  testFireworks
//
//  Created by Marilyn Martha Yusnita Devi Parhusip on 18/05/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import SpriteKit
import GameplayKit

extension GameScene: SKSceneDelegate{
}

class GameScene: SKScene {
    
    
    let label = SKLabelNode(text: "Happy Birthday")
    let particle = SKEmitterNode(fileNamed: "MyParticle")!
    let particleBlue = SKEmitterNode(fileNamed: "MyParticle")
    let particleRed = SKEmitterNode(fileNamed: "MyParticle")

    override func didMove(to view: SKView) {
        
        addChild(label)
//        addChild(particle)
//        addChild(particleBlue!)
//        addChild(particleRed!)
        
        label.position = CGPoint(x: view.frame.width / 2 , y: view.frame.height / 2)
        label.fontSize = 50
        label.fontColor = SKColor.yellow
        label.fontName = "Avenir"
        
        particle.name = "particle1"
        particle.position = CGPoint(x: CGFloat.random(in: 0...view.frame.width), y: CGFloat.random(in: 0...view.frame.height))
//        particle.particleBirthRate = 2000
//        particle.numParticlesToEmit = 500
//        
        // Fade Out Action
//        let moveParticle = SKAction.fadeOut(withDuration: 1)
//
//        particle.run(moveParticle)
        
        
        particleBlue?.name = "particle2"
        particleBlue?.particleColor = UIColor.blue
        particleBlue?.position = CGPoint(x: CGFloat.random(in: 0...view.frame.width), y: CGFloat.random(in: 0...view.frame.height))
//        particleBlue?.particleBirthRate = 2000
//        particle.numParticlesToEmit = 500
//
        particleRed?.name = "particle3"
        particleRed?.particleColor = UIColor.red
        particleRed?.position = CGPoint(x: CGFloat.random(in: 0...view.frame.width), y: CGFloat.random(in: 0...view.frame.height))
//        particleRed?.particleBirthRate = 2000
//        particleRed?.numParticlesToEmit = 500
//
        
        let allParticles: [SKEmitterNode] = [particle, particleBlue!, particleRed!]
        
        for particles in allParticles {
            particles.isHidden = true
            self.addChild(particles)
        }
        
        print(allParticles)
        
        
//        let actions = SKAction.repeatForever([SKAction.run(.unhide(), onChildWithName: "particle"), SKAction.run(.unhide(), onChildWithName: "particleBlue"), SKAction.run(.unhide(), onChildWithName: "particleRed")])
        
//         let actions = SKAction.repeatForever(SKAction.run(.unhide(), onChildWithName: "particleRed"))
//
        
        let anotherActions = SKAction.sequence([.run(.unhide(), onChildWithName: "particle1"), .wait(forDuration: 1), .run(.unhide(), onChildWithName: "particle2"), .wait(forDuration: 1), .run(.unhide(), onChildWithName: "particle3"), .wait(forDuration: 1)
        ])
        
        self.run(anotherActions)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(recognizer)
        
        
        
        
        
    }
    
    @objc func tap(recognizer: UITapGestureRecognizer) {
//        let viewLocation = recognizer.location(in: view)
//        let sceneLocation = convertPoint(fromView: viewLocation)
//        let moveByAction = SKAction.moveBy(x: sceneLocation.x - label.position.x, y: sceneLocation.y - label.position.y, duration: 1)
//       // label.run(moveByAction)
//
//        let moveByReverseAction = moveByAction.reversed()
//        let moveByactions = [moveByAction, moveByReverseAction]
//        let moveSequence = SKAction.sequence(moveByactions)
//      //  let moveRepeatSequence = SKAction.repeat(moveSequence, count: 3)
//        let moveForeverSequence = SKAction.repeatForever(moveSequence)
//
//        let scale = SKAction.scale(to: 0.5, duration: 1)
//
//        label.run(scale)
        
        
        let viewLocation = recognizer.location(in: self.view)
        let sceneLocation = convertPoint(fromView: viewLocation)
        
//        if atPoint(sceneLocation) == label {
//            let scale = SKAction.scale(to: 0.5, duration: 1)
//            label.run(scale)
        
//        if label.contains(sceneLocation) {
//            let scale = SKAction.scale(to: 0.5, duration: 1)
//            label.run(scale)
        
        
        let sceneNodes = nodes(at: sceneLocation)
        
        for sceneNode in sceneNodes {
//            if sceneNode == label {
//                let scale = SKAction.scale(to: 0.5, duration: 1)
//            let scale = SKAction.scaleX(to: 0.5, duration: 1)
//                let scale = SKAction.scaleY(to: 2, duration: 1)
//                let scale = SKAction.scaleX(to: 0.5, y: 2, duration: 1)
//                label.run(scale)
            
            //let scale = SKAction.scale(by: 0.5, duration: 1)
            
//            let scale = SKAction.scaleX(by: 0.5, y: 2, duration: 1)
//            let reverseScale = scale.reversed()
//            let actions = [scale, reverseScale]
//            let sequence = SKAction.sequence(actions)
//            //let repeatSequence = SKAction.repeat(sequence, count: 5)
//            let repeatSequence = SKAction.repeatForever(sequence)
//            label.run(repeatSequence)
//
            
            let move = SKAction.move(to: sceneLocation, duration: 1)
//            let scale = SKAction.scaleX(to: 0.5, y: 2, duration: 1)
            let scale = SKAction.scaleX(by: 0.5, y: 2, duration: 1)
            let actions = [move, scale]
            let sequence = SKAction.sequence(actions)
            label.run(sequence)
                break
            }
        
//        let particleNodes = nodes(at: sceneLocation)
//
//        for sceneNode in sceneNodes {
//            let moveParticle = SKAction.moveBy(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...100), duration: 1)
//            let actionsParticle = [moveParticle]
//            let sequenceParticle = SKAction.sequence(actionsParticle)
//            particle.run(sequenceParticle)
//            break
        }
        }
    
    
//    }



