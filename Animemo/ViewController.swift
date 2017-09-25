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
    @IBOutlet weak var card1: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var card4: UIView!
    @IBOutlet weak var card5: UIView!
    @IBOutlet weak var card6: UIView!
    @IBOutlet weak var card7: UIView!
    @IBOutlet weak var card8: UIView!
    @IBOutlet weak var card9: UIView!
    @IBOutlet weak var card10: UIView!
    @IBOutlet weak var card11: UIView!
    @IBOutlet weak var card12: UIView!
    @IBOutlet weak var card13: UIView!
    @IBOutlet weak var card14: UIView!
    @IBOutlet weak var card15: UIView!
    @IBOutlet weak var card16: UIView!
    //=======================================
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames = ["beaver.png", "beaver.png", "cat.png", "cat.png", "cow.png", "cow.png", "dog.png", "dog.png", "duck.png", "duck.png", "moose.png", "moose.png", "pig.png", "pig.png", "sheep.png", "sheep.png"]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayOfCards = [UIView]()
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var cards: [UIView]!
    //=======================================

    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16]
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16]
        randomAnimals()
        setImagesToCards()
    }
    //=======================================
    @IBAction func showCard(_ sender: UIButton) {
        print(sender.tag)
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        switch sender.tag {
        case 0:
            flipCard(from: front1, to: back1)
            arrayOfCards.append(card1)
            arrayOfShowingBacks.append(back1)
            arrayOfHidingFronts.append(front1)
        case 1:
            flipCard(from: front2, to: back2)
            arrayOfCards.append(card2)
            arrayOfShowingBacks.append(back2)
            arrayOfHidingFronts.append(front2)
        case 2:
            flipCard(from: front3, to: back3)
            arrayOfCards.append(card3)
            arrayOfShowingBacks.append(back3)
            arrayOfHidingFronts.append(front3)
        case 3:
            flipCard(from: front4, to: back4)
            arrayOfCards.append(card4)
            arrayOfShowingBacks.append(back4)
            arrayOfHidingFronts.append(front4)
        case 4:
            flipCard(from: front5, to: back5)
            arrayOfCards.append(card5)
            arrayOfShowingBacks.append(back5)
            arrayOfHidingFronts.append(front5)
        case 5:
            flipCard(from: front6, to: back6)
            arrayOfCards.append(card6)
            arrayOfShowingBacks.append(back6)
            arrayOfHidingFronts.append(front6)
        case 6:
            flipCard(from: front7, to: back7)
            arrayOfCards.append(card7)
            arrayOfShowingBacks.append(back7)
            arrayOfHidingFronts.append(front7)
        case 7:
            flipCard(from: front8, to: back8)
            arrayOfCards.append(card8)
            arrayOfShowingBacks.append(back8)
            arrayOfHidingFronts.append(front8)
        case 8:
            flipCard(from: front9, to: back9)
            arrayOfCards.append(card9)
            arrayOfShowingBacks.append(back9)
            arrayOfHidingFronts.append(front9)
        case 9:
            flipCard(from: front10, to: back10)
            arrayOfCards.append(card10)
            arrayOfShowingBacks.append(back10)
            arrayOfHidingFronts.append(front10)
        case 10:
            flipCard(from: front11, to: back11)
            arrayOfCards.append(card11)
            arrayOfShowingBacks.append(back11)
            arrayOfHidingFronts.append(front11)
        case 11:
            flipCard(from: front12, to: back12)
            arrayOfCards.append(card12)
            arrayOfShowingBacks.append(back12)
            arrayOfHidingFronts.append(front12)
        case 12:
            flipCard(from: front13, to: back13)
            arrayOfCards.append(card13)
            arrayOfShowingBacks.append(back13)
            arrayOfHidingFronts.append(front13)
        case 13:
            flipCard(from: front14, to: back14)
            arrayOfCards.append(card14)
            arrayOfShowingBacks.append(back14)
            arrayOfHidingFronts.append(front14)
        case 14:
            flipCard(from: front15, to: back15)
            arrayOfCards.append(card15)
            arrayOfShowingBacks.append(back15)
            arrayOfHidingFronts.append(front15)
        case 15:
            flipCard(from: front16, to: back16)
            arrayOfCards.append(card16)
            arrayOfShowingBacks.append(back16)
            arrayOfHidingFronts.append(front16)
        default:
            break
        }
        arrayChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        verification()
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
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //=======================================
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reFlip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    //=======================================
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
            } else {
                arrayOfCards = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    //=======================================
    @objc func hideCards() {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
    }
    //=======================================
    @objc func reFlip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    //=======================================
    @IBAction func reset(_ sender: UIButton) {
        for card in cards {
            card.isHidden =  false
        }
        arrayOfAnimalNames = ["beaver.png", "beaver.png", "bee.png", "bee.png", "cat.png", "cat.png", "chicken.png", "chicken.png", "cow.png", "cow.png", "dog.png", "dog.png", "duck.png", "duck.png", "moose.png", "moose.png", "pig.png", "pig.png", "sheep.png"]
        arrayOfRandomAnimalNames = []
        randomAnimals()
        setImagesToCards()
    }
    //=======================================
}

