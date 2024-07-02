/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

class ProfilePostsGroupCVuCell: UICollectionViewCell {
    //MARK: - Variables
    
    //MARK: - Arrays
    
    //MARK: - Outlets
    @IBOutlet weak var groupCVu: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionVuSetup()
    }

//    override func systemLayoutSizeFitting(_ targetSize: CGSize,
//                                             withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority,
//                                             verticalFittingPriority: UILayoutPriority) -> CGSize {
//           // Make sure the contentView's width is correct
//           contentView.frame = CGRect(origin: .zero, size: targetSize)
//           // Force the contentView to layout its subviews
//           contentView.layoutIfNeeded()
//           
//           // Calculate the size based on the content size of the outer collection view
//           return CGSize(width: targetSize.width, height: groupCVu.contentSize.height)
//       }
}



extension ProfilePostsGroupCVuCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return load_option_Cell(row: indexPath.row, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.width / 2)
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
