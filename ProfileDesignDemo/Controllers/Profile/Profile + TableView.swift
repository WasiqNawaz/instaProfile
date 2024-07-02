/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

//MARK:- T a b l e V i e w
extension ProfileVC: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return self.load_profile_info_Cell(row: indexPath.row, indexPath: indexPath)
        }else{
            return self.load_post_group_Cell(row: indexPath.row, indexPath: indexPath)
        }
    }
    
}

//MARK: -------------- TableView Cell's---------------
//MARK:- L o a d - I n f o - H e a d e r - C e l l
extension ProfileVC{
    func load_profile_info_Cell(row:Int, indexPath:IndexPath)->UITableViewCell{
        let cell = self.tblVu.dequeueReusableCell(withIdentifier: "ProfileInfoHeaderCell", for: indexPath) as! ProfileInfoHeaderCell
        return cell
    }
}

//MARK:- L o a d - I n f o - H e a d e r - C e l l
extension ProfileVC{
    func load_post_group_Cell(row:Int, indexPath:IndexPath)->UITableViewCell{
        let cell = self.tblVu.dequeueReusableCell(withIdentifier: "ProfilePostsGroupTVuCell", for: indexPath) as! ProfilePostsGroupTVuCell
        return cell
    }
}

extension ProfileVC{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = Bundle.main.loadNibNamed("ProfileOptionHeaderCell", owner: self, options: nil)?.first as! ProfileOptionHeaderCell
        return header
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            0
        }else{
            35
        }
    }
}



//MARK:- S e t U p
extension ProfileVC{
    func tableViewSetup(){
        self.tblVu.delegate = self
        self.tblVu.dataSource = self
        if #available(iOS 15.0, *) {
            tblVu.sectionHeaderTopPadding = 0
        }
        self.tblVu.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
        self.tblVu.register(UINib(nibName: "ProfileInfoHeaderCell", bundle: nil), forCellReuseIdentifier: "ProfileInfoHeaderCell")
        self.tblVu.register(UINib(nibName: "ProfileOptionHeaderCell", bundle: nil), forCellReuseIdentifier: "ProfileOptionHeaderCell")
        self.tblVu.register(UINib(nibName: "ProfilePostsGroupTVuCell", bundle: nil), forCellReuseIdentifier: "ProfilePostsGroupTVuCell")
        
//        tblVu.rowHeight = UITableView.automaticDimension
//        tblVu.estimatedRowHeight = 50 // Adjust as needed
//        self.tblVu.register(UINib(nibName: "ProfileOptionHeaderCell", bundle: nil), forCellReuseIdentifier: "ProfileOptionHeaderCell")
//        self.tblVu.register(UINib(nibName: "ProfileOptionHeaderCell", bundle: nil), forCellReuseIdentifier: "ProfileOptionHeaderCell")
    }
}
