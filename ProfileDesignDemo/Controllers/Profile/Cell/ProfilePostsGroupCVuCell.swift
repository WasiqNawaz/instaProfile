/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

class ProfilePostsGroupCVuCell: UICollectionViewCell {
    //MARK: - Variables
    var option = 0
    //MARK: - Arrays
    
    //MARK: - Outlets
    @IBOutlet weak var groupCVu: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionVuSetup()
    }

    
}



extension ProfilePostsGroupCVuCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if option == 1 {
            return 7
        }else{
            return 15
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return load_option_Cell(row: indexPath.row, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if option == 1 {
            return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.width / 2)
        }else{
            return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.width / 3)
        }
    }
}

// MARK: - CollectionView Cell's
// MARK: - Load Cell
extension ProfilePostsGroupCVuCell {
    func load_option_Cell(row: Int, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = groupCVu.dequeueReusableCell(withReuseIdentifier: "ProfilePostCVuCell", for: indexPath) as! ProfilePostCVuCell
        return cell
    }
}

// MARK: - Collection View Setup
extension ProfilePostsGroupCVuCell {
    func collectionVuSetup() {
        self.groupCVu.delegate = self
        self.groupCVu.dataSource = self
        self.groupCVu.register(UINib(nibName: "ProfilePostCVuCell", bundle: nil), forCellWithReuseIdentifier: "ProfilePostCVuCell")
    }
}
