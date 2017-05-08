import UIKit

class WMFExploreWrapperViewController: UIViewController {
    
    public var userStore: MWKDataStore? {
        didSet {
            configureExploreViewController()
        }
    }
    
    private var exploreViewController: WMFExploreViewController? {
        didSet {
            configureExploreViewController()
        }
    }

    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    fileprivate func configureExploreViewController() {
        guard let vc = self.exploreViewController, let userStore = self.userStore else {
            return
        }
        vc.userStore = userStore
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier,
            identifier == "embedCollectionViewController" else {
                return
        }
        guard let vc = segue.destination as? WMFExploreViewController else {
            assertionFailure("should be a WMFExploreViewController")
            return
        }
        
        exploreViewController = vc
    }
}
