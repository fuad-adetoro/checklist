import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked: Bool
    
    func toggleChecked(){
        checked = !checked
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: "Text")
        aCoder.encode(checked, forKey: "Checked")
    }
    
    convenience init(text: String, checked: Bool) {
        self.init(text: text, checked: checked)
    }
    
    override init() {
        checked = false
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: "Text") as! String
        checked = aDecoder.decodeBool(forKey: "Checked")
        super.init()
    }
}
