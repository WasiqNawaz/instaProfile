import UIKit
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

@available(iOS 13.0, *)
extension UIViewController{

    
//    /**** Search bar ****/
//    func searchBarSetup(searchBar: UISearchBar){
//        searchBar.setupSearchBarSearchIcon(color: UIColor(named: "WhiteColor")!)
//        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
//            textField.backgroundColor = UIColor(named: "Color 313131")
//            textField.font = UIFont(name: "Poppins-Regular", size: 13)
//            textField.textColor = UIColor(named: "WhiteColor")
//            let backgroundView = textField.subviews.first
//            if #available(iOS 11.0, *) {
//               backgroundView?.backgroundColor = UIColor(named: "Color 313131")
//                backgroundView?.subviews.forEach({ $0.removeFromSuperview() })
//            }
//            backgroundView?.layer.cornerRadius = 8
//            backgroundView?.layer.masksToBounds = true
//        }
//    }
//


//func datePicker(){
//let date = Date()
//let format = DateFormatter()
//format.dateStyle = .long
////        format.dateFormat = "dd-MM-yyyy HH:mm:ss"
//    popUpNotes.currentDateLbl.text = format.string(from: date)
//}
    

    /**** KeyBoard Hide ****/
    func hideKeyboard(){
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){view.endEditing(true)
        
    }

//    /****Set up Drop Down ****/
//    func setupDropDown(field: UITextField,boundry: UIView, dropDown: DropDown, data: [String], selection: SelectionClosure? = nil) -> DropDown {
//        field.isUserInteractionEnabled = false
//        dropDown.anchorView = boundry
//        dropDown.bottomOffset = CGPoint(x: 0, y: field.frame.size.height)
//        dropDown.dataSource = data
//        dropDown.selectionAction = selection
//        dropDown.backgroundColor = UIColor.white
//        dropDown.textColor = UIColor.black ?? .gray
//        return dropDown
//    }

//}
/////MARK:-<--------------------------- Message Top Header Popup -------------------------------->
//extension UIViewController{
//    func showHeaderPopup(title:String,body:String){
//      let warning = MessageView.viewFromNib(layout: .cardView)
//        warning.configureTheme(.success)
//      warning.configureDropShadow()
//      let iconText = "☻"
//      warning.configureContent(title: title, body: body, iconText: iconText)
//      warning.button?.isHidden = true
//      var warningConfig = SwiftMessages.defaultConfig
//      warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
//      SwiftMessages.show(config: warningConfig, view: warning)
//   }
//}
//
//
//////MARK:-<--------------------------- Message Error Top Header Popup ------------------------------>
//extension UIViewController{
//    func showHeaderErrorPopup(title:String,body:String){
//      let warning = MessageView.viewFromNib(layout: .cardView)
//        warning.configureTheme(.error)
//      warning.configureDropShadow()
//      let iconText = "❕"
//      warning.configureContent(title: title, body: body, iconText: iconText)
//      warning.button?.isHidden = true
//      var warningConfig = SwiftMessages.defaultConfig
//    warning.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
//      warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
//      SwiftMessages.show(config: warningConfig, view: warning)
//   }
//}
///*** Data Extension ***/
//extension Data {
//    mutating func append(_ string: String) {
//        if let data = string.data(using: .utf8) {
//            append(data)
//        }
//    }
//}
////*** Progress Loaders ***
//extension UIViewController: NVActivityIndicatorViewable{
//    func progressLoader(){
//        let size = CGSize(width: 30, height: 30)
//        startAnimating(size, type: NVActivityIndicatorType.ballPulse , color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), fadeInAnimation: nil)
//    }
//
//    func PrivacyLoader(){
//        let size = CGSize(width: 30, height: 30)
//        startAnimating(size, type: NVActivityIndicatorType.ballPulse , color: UIColor(named: "AppColor"), fadeInAnimation: nil)
//    }
//
//    func dismissProgressLoader(){
//        NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
//    }
//}
//
/////**** Show alert | Show Success ****/
////extension UIViewController {
////    func showError(title: String, body: String){
////        AlertMessage.share.showError(alertTitle: title, alertBody: body)
////        SwiftMessages.show(view: AlertMessage.share.myErrorView)
////    }
////    func showSuccess(title: String, body: String){
////        AlertMessage.share.showSuccess(alertTitle: title, alertBody: body)
////        SwiftMessages.show(view: AlertMessage.share.mySuccessView)
////    }
////}
//extension String {
//    func isValidEmail() -> Bool {
//        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
//        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
//    }
//}
////
////MARK: - Functions
//extension UIViewController{
//    func showFullImage(img: UIImage){
//        let imageViewer = Optik.imageViewer(
//            withImages: [img]
//        )
//        present(imageViewer, animated: true, completion: nil)
//    }
//}
//
//
//
//
//
////MARK: - Dark | light Map Mode
////extension GMSMapView {
////    func mapStyle(withFilename name: String, andType type: String) {
////        do {
////            if let styleURL = Bundle.main.url(forResource: name, withExtension: type) {
////                self.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
////            } else {
////                NSLog("Unable to find style.json")
////            }
////        } catch {
////            NSLog("One or more of the map styles failed to load. \(error)")
////        }
////    }
////}
//
////MARK: - Get disance between two points
////extension UIViewController{
////    /****  Function to calculate the distance between the two coordinates ****/
////    func getDistance(secondLocationLatitude: Double, SecondLocationLongitude: Double ) -> String{
////        let coordinate₀ = CLLocation(latitude: Global.userCurrentLat, longitude: Global.userCurrentLong)
////        let coordinate₁ = CLLocation(latitude: secondLocationLatitude, longitude: SecondLocationLongitude)
////
////        let distanceInMeters = coordinate₀.distance(from: coordinate₁)
////        let distanceInKM = distanceInMeters / 1609
////        let doubleStr = String(format: "%.2f", ceil(distanceInKM * 100)/100)
////        return doubleStr
////    }
////}
//
////MARK:- Make a call functions
//extension String
//{
//    func separateString() -> [String]
//    {
//        return components(separatedBy: "/")
//    }
//
//    func replaceString() -> String
//    {
//        return replacingOccurrences(of: "/", with: ", ")
//    }
//
//    enum RegularExpressions: String
//    {
//        case phone = "^\\s*(?:\\+?(\\d{1,3}))?([-. (]*(\\d{3})[-. )]*)?((\\d{3})[-. ]*(\\d{2,4})(?:[-.x ]*(\\d+))?)\\s*$"
//    }
//
//    func isValid(regex: RegularExpressions) -> Bool
//    {
//        return isValid(regex: regex.rawValue)
//    }
//
//    func isValid(regex: String) -> Bool
//    {
//        let matches = range(of: regex, options: .regularExpression)
//        return matches != nil
//    }
//
//    func onlyDigits() -> String
//    {
//        let filtredUnicodeScalars = unicodeScalars.filter{CharacterSet.decimalDigits.contains($0)}
//        return String(String.UnicodeScalarView(filtredUnicodeScalars))
//    }
//
//    func makeACall()
//    {
//        if isValid(regex: .phone)
//        {
//            if let url = URL(string: "tel://\(self.onlyDigits())"),
//                UIApplication.shared.canOpenURL(url) {
//                if UIApplication.shared.canOpenURL(url){
//                    if #available(iOS 10, *){UIApplication.shared.open(url)}
//                    else{UIApplication.shared.openURL(url)}
//                }
//            }
//        }
//        else{print("not valid phone number!")}
//    }
//}
//
//extension Double {
//
//    var kmFormatted: String {
//        if self >= 10000, self <= 999999 {
//            return String(format: "%.1fK", locale: Locale.current,self/1000).replacingOccurrences(of: ".0", with: "")
//        }
//
//        if self > 999999 {
//            return String(format: "%.1fM", locale: Locale.current,self/1000000).replacingOccurrences(of: ".0", with: "")
//        }
//
//        return String(format: "%.0f", locale: Locale.current,self)
//    }
//
//}
//
///**** Convert timestamp to date ****/
//extension Double {
//    func getDateStringFromUTC() -> String {
//        let date = Date(timeIntervalSince1970: self)
//
//        let dateFormatter = DateFormatter()
//        dateFormatter.locale = Locale(identifier: "en_US")
//        dateFormatter.dateStyle = .medium
//
//        return dateFormatter.string(from: date)
//    }
//}
//
////MARK: - Check empty strings
//extension String {
//    var isReallyEmpty: Bool {
//        return self.trimmingCharacters(in: .whitespaces).isEmpty
//    }
//}
//
////MARK: - Alamofire image downloader
////struct AlamofireImageDownloader: Optik.ImageDownloader {
////    private let internalImageDownloader = AlamofireImage.ImageDownloader()
////    func downloadImage(from url: URL, completion: @escaping ImageDownloaderCompletion) {
////        let URLRequest = Foundation.URLRequest(url: url)
////        internalImageDownloader.download(URLRequest, completion:  { response in
////            switch response.result {
////            case .success(let image):
////                completion(image)
////            case .failure(_):
////                // Hanlde error
////                return
////            }
////        })
////    }
////}
//
////MARK: - Timestamp in miliseconds
//extension Date {
//    func currentTimeMillis() -> Int64 {
//        return Int64(self.timeIntervalSince1970 * 1000)
//    }
//}
//
////extension UICollectionViewCell{
////    /**** Convert Time ********/
////    func timeConverter(time: String)->String{
////        let date = Date(timeIntervalSince1970: Double(time) as! TimeInterval)
////        print(date.timeAgoSinceDate())
////        let agotime = date.timeAgoSinceDate()
////        return agotime
////    }
////}
////
////
////
//
//
//
//
////MARK:- G e n e r a t e - T h u m b n a i l
//extension UIViewController{
//    func getThumbnailImageFromVideoUrl(url: URL, completion: @escaping ((_ image: UIImage?)->Void)) {
//        DispatchQueue.global().async {
//            let asset = AVAsset(url: url)
//            let avAssetImageGenerator = AVAssetImageGenerator(asset: asset)
//            avAssetImageGenerator.appliesPreferredTrackTransform = true
//            let thumnailTime = CMTimeMake(value: 2, timescale: 1)
//            do {
//                let cgThumbImage = try avAssetImageGenerator.copyCGImage(at: thumnailTime, actualTime: nil)
//                let thumbNailImage = UIImage(cgImage: cgThumbImage)
//                DispatchQueue.main.async {
//                    completion(thumbNailImage)
//                }
//            } catch {
//                DispatchQueue.main.async {
//                    completion(nil)
//                }
//            }
//        }
//    }
//}
////MARK:-<--------------------------- KeyBoard Hide -------------------------------->
//class AlertHelper: NSObject {
//    class func displayAlertMessage(messageToDisplay: String, sender: UIViewController){
//        let alertController = UIAlertController(title: "Sorry!", message: messageToDisplay, preferredStyle: .alert)
//        let OKAction = UIAlertAction(title: "OK", style: .destructive){
//            (actIon: UIAlertAction!) in
//            print("Ok Button tapped")
//        }
//        alertController.addAction(OKAction)
//        sender.present(alertController, animated: true, completion: nil)
//    }
//}
//
////MARK:- Current
//
////MARK: - Time Difference between two times
//extension UIViewController{
//    func timeConverter(time:String)->String{
//        let date = Date(timeIntervalSince1970: Double(time) as! TimeInterval)
//        print(date.timeAgoSinceDate())
//        let agotime = date.timeAgoSinceDate()
//        return agotime
//    }
//
//    /**** Get time  ****/
//    func getTime(timeResult: Double) -> String{
//        let date = Date(timeIntervalSince1970: timeResult)
//        let dateFormatter = DateFormatter()
//        dateFormatter.timeStyle = DateFormatter.Style.medium //Set time style
//        dateFormatter.dateStyle = DateFormatter.Style.medium //Set date style
//        dateFormatter.timeZone = .current
//        dateFormatter.dateFormat = "MMM d, h:mm a"
//        let localDate = dateFormatter.string(from: date)
//        return localDate
//    }
//}
//
//extension Date {
//    func timeAgoSinceDate() -> String {
//        let fromDate = self
//        let toDate = Date()
//
//        if let interval = Calendar.current.dateComponents([.year], from: fromDate, to: toDate).year, interval > 0  {
//            return interval == 1 ? "\(interval)" + " " + "year ago" : "\(interval)" + " " + "years ago"
//        }
//
//        // Month
//        if let interval = Calendar.current.dateComponents([.month], from: fromDate, to: toDate).month, interval > 0  {
//            return interval == 1 ? "\(interval)" + " " + "month ago" : "\(interval)" + " " + "months ago"
//        }
//
//        // Day
//        if let interval = Calendar.current.dateComponents([.day], from: fromDate, to: toDate).day, interval > 0  {
//            return interval == 1 ? "\(interval)" + " " + "day ago" : "\(interval)" + " " + "days ago"
//        }
//
//        // Hours
//        if let interval = Calendar.current.dateComponents([.hour], from: fromDate, to: toDate).hour, interval > 0 {
//            return interval == 1 ? "\(interval)" + " " + "hour ago" : "\(interval)" + " " + "hours ago"
//        }
//
//        // Minute
//        if let interval = Calendar.current.dateComponents([.minute], from: fromDate, to: toDate).minute, interval > 0 {
//            return interval == 1 ? "\(interval)" + " " + "min ago" : "\(interval)" + " " + "min ago"
//        }
//
//        return "just now"
//    }
//}
//
//
//struct AlamofireImageDownloader: Optik.ImageDownloader {
//    private let internalImageDownloader = AlamofireImage.ImageDownloader()
//    func downloadImage(from url: URL, completion: @escaping ImageDownloaderCompletion) {
//        let URLRequest = Foundation.URLRequest(url: url)
//        internalImageDownloader.download(URLRequest, completion:  { response in
//            switch response.result {
//            case .success(let image):
//                completion(image)
//            case .failure(_):
//                // Hanlde error
//                return
//            }
//        })
//    }
//}
//
//extension UICollectionViewCell{
//    func timeConverter(time:String)->String{
//        let date = Date(timeIntervalSince1970: Double(time) as! TimeInterval)
//        print(date.timeAgoSinceDate())
//        let agotime = date.timeAgoSinceDate()
//        return agotime
//    }
//}
//
//
//
//
////make two decimal
//extension UIViewController{
//    func setTwoDigitAfterDecimal(amount:String)->String{
//        return String(format: "%.02f",Double(amount)!)
//    }
}
