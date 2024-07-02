/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

class ProfilePostsGroupTVuCell: UITableViewCell {
    //MARK: - Variables
    
    //MARK: - Arrays
    
    //MARK: - Outlets
    @IBOutlet weak var postGroupCVu: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionVuSetup()
    }
//    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
//        self.contentView.frame = self.bounds
//        self.layoutIfNeeded()
//        return self.postGroupCVu.contentSize
//    }
//    override func systemLayoutSizeFitting(_ targetSize: CGSize,
//                                             withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority,
//                                             verticalFittingPriority: UILayoutPriority) -> CGSize {
//           // Make sure the contentView's width is correct
//           contentView.frame = CGRect(origin: .zero, size: targetSize)
//           // Force the contentView to layout its subviews
//           contentView.layoutIfNeeded()
//           
//           // Calculate the size based on the content size of the outer collection view
//           return CGSize(width: targetSize.width, height: postGroupCVu.contentSize.height)
//       }
}


/********** Developed by Drudots Technologies **********/
/******** https://www.drudotstech.com **********/

extension ProfilePostsGroupTVuCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return load_option_Cell(row: indexPath.row, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 500)
    }
}

// MARK: - CollectionView Cell's
// MARK: - Load Cell
extension ProfilePostsGroupTVuCell {
    func load_option_Cell(row: Int, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = postGroupCVu.dequeueReusableCell(withReuseIdentifier: "ProfilePostsGroupCVuCell", for: indexPath) as! ProfilePostsGroupCVuCell
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
