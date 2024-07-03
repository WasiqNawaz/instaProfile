/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

class ProfileOptionHeaderCell: UITableViewCell {
    // MARK: - Variables
    var optionArr = ["square.grid.3x3" , "play.house.fill" , "person.crop.square"]
    var delegate : headerOptionProtocol!
    
    // MARK: - Arrays
    
    // MARK: - Outlets
    @IBOutlet weak var profileOptionCVu: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionVuSetup()
    }
}

extension ProfileOptionHeaderCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return load_option_Cell(row: indexPath.row, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate.tappedHeaderOptionBtn(row: indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3 - 10, height: collectionView.frame.height)
    }
}

// MARK: - CollectionView Cell's
// MARK: - Load Cell
extension ProfileOptionHeaderCell {
    func load_option_Cell(row: Int, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = profileOptionCVu.dequeueReusableCell(withReuseIdentifier: "ProfileOptionCVuCell", for: indexPath) as! ProfileOptionCVuCell
        cell.optionImg.image = UIImage(systemName: optionArr[indexPath.row])
        return cell
    }
}

// MARK: - Collection View Setup
extension ProfileOptionHeaderCell {
    func collectionVuSetup() {
        self.profileOptionCVu.delegate = self
        self.profileOptionCVu.dataSource = self
        self.profileOptionCVu.register(UINib(nibName: "ProfileOptionCVuCell", bundle: nil), forCellWithReuseIdentifier: "ProfileOptionCVuCell")
    }
}
