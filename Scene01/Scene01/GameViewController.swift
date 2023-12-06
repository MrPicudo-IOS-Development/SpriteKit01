/* GameViewController.swift --> Scene01. Created by Miguel Torres on 06/12/23. */

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let skView = self.view as? SKView {
            // Creamos la escena llamada "robot" que cubre todo el espacio disponible en la vista de SpriteKit
            let robot = SKScene(size: skView.bounds.size)
            // Indicamos el punto de anclaje de la escena en el centro de la vista.
            robot.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            // Creamos un nodo que nos permitirá mostrar una imagen.
            let image = SKSpriteNode(imageNamed: "robot.png")
            // Añadimos esa imagen a la escena que construimos previamente.
            robot.addChild(image)
            // Finalmente presentamos la escena que creamos.
            skView.presentScene(robot)
        }
        
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}


/*
/* Código que podemos eliminar porque es el "Hola Mundo" de este proyecto. */
if let view = self.view as! SKView? {
    // Load the SKScene from 'GameScene.sks'
    if let scene = SKScene(fileNamed: "GameScene") {
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        // Present the scene
        view.presentScene(scene)
    }
    view.ignoresSiblingOrder = true
    view.showsFPS = true
    view.showsNodeCount = true
}
*/
