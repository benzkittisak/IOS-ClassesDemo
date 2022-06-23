// Class Dragon จะสืบทอดคุณสมบัติทั้งหมดจาก Enemy class มา

class Dragon:Enemy {
    var wingSpan = 2
    
    func talk(speech:String){
        print(speech)
    }
    
    override func move(){
        print("Fly forwards.")
    }
    
    override func attack() {
        super.attack()
        print("Spit with fire")
    }
    
    
}
