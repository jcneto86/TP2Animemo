//=======================================
import UIKit
//=======================================

class ViewController: UIViewController {
    //=======================================
    @IBOutlet weak var back1: UIView!
    @IBOutlet weak var front1: UIView!
    @IBOutlet weak var back2: UIView!
    @IBOutlet weak var front2: UIView!
    @IBOutlet weak var back3: UIView!
    @IBOutlet weak var front3: UIView!
    @IBOutlet weak var back4: UIView!
    @IBOutlet weak var front4: UIView!
    @IBOutlet weak var back5: UIView!
    @IBOutlet weak var front5: UIView!
    @IBOutlet weak var back6: UIView!
    @IBOutlet weak var front6: UIView!
    @IBOutlet weak var back7: UIView!
    @IBOutlet weak var front7: UIView!
    @IBOutlet weak var back8: UIView!
    @IBOutlet weak var front8: UIView!
    @IBOutlet weak var back9: UIView!
    @IBOutlet weak var front9: UIView!
    @IBOutlet weak var back10: UIView!
    @IBOutlet weak var front10: UIView!
    @IBOutlet weak var back11: UIView!
    @IBOutlet weak var front11: UIView!
    @IBOutlet weak var back12: UIView!
    @IBOutlet weak var front12: UIView!
    @IBOutlet weak var back13: UIView!
    @IBOutlet weak var front13: UIView!
    @IBOutlet weak var back14: UIView!
    @IBOutlet weak var front14: UIView!
    @IBOutlet weak var back15: UIView!
    @IBOutlet weak var front15: UIView!
    @IBOutlet weak var back16: UIView!
    @IBOutlet weak var front16: UIView!
    //=======================================
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    //=======================================
    var arrayOfImageViews: [UIImageView]!
    var arrayOfRandomAnimal: [;"beaver.png", "beaver.png", "bee.png", "bee.png", "cat.png", "cat.png", "chicken.png", "chicken.png", "cow.png", "cow.png", "dog.png", "dog.png", "duck.png", "duck.png", "moose.png", "moose.png", "pig.png", "pig.png", "sheep.png"]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayOfCards = [UIView]()
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var cards: [UIView]!
    //=======================================

    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16]

    }
    //=======================================
    @IBAction func showCard(_ sender: Any) {
    }
    //=======================================
    func flipCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }
    //=======================================
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    //=======================================
    
}
//=======================================

