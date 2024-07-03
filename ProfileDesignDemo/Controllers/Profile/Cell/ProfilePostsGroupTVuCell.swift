/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

class ProfilePostsGroupTVuCell: UITableViewCell {
    //MARK: - Variables
    var option = 0
    //MARK: - Arrays
    
    //MARK: - Outlets
    @IBOutlet weak var postGroupCVu: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionVuSetup()
    
    }

}


extension ProfilePostsGroupTVuCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return load_option_Cell(row: indexPath.row, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

// MARK: - CollectionView Cell's
// MARK: - Load Cell
extension ProfilePostsGroupTVuCell {
    func load_option_Cell(row: Int, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = postGroupCVu.dequeueReusableCell(withReuseIdentifier: "ProfilePostsGroupCVuCell", for: indexPath) as! ProfilePostsGroupCVuCell
        cell.option = indexPath.row
        return cell
    }
}

// MARK: - Collection View Setup
extension ProfilePostsGroupTVuCell {
    func collectionVuSetup() {
        self.postGroupCVu.delegate = self
        self.postGroupCVu.dataSource = self
        self.postGroupCVu.register(UINib(nibName: "ProfilePostsGroupCVuCell", bundle: nil), forCellWithReuseIdentifier: "ProfilePostsGroupCVuCell")
    }
}
