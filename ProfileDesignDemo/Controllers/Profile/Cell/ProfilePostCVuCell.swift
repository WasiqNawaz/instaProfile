/******** Developed by Drudots Technologies ********/
/****** https://www.drudotstech.com ********/

class ProfilePostCVuCell: UICollectionViewCell {

    //MARK:- Variables
    var row = 0
    
    //MARK:- Arrays
    
    //MARK:- Outlets
    @IBOutlet weak var saveImg: UIImageView!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var savedVu: DesignableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //*
    @IBAction func savedTapped(_ sender: UIButton) {
        
    }

}
