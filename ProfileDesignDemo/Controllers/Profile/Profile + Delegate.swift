/********* Developed by Drudots Technologies *********/
/******* https://www.drudotstech.com *********/

protocol headerOptionProtocol {
    func tappedHeaderOptionBtn(row:Int)
}

extension ProfileVC : headerOptionProtocol{
    func tappedHeaderOptionBtn(row:Int) {
        self.tblVu.reloadData()
    }
    
}
