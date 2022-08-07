

class CalculadoraDeNotas{
    
    var AV1: Double = 0.00
    var AV2: Double = 0.00
    var AV3: Double = 0.00
    var EDAG: Double = 0.00
    
    init(AV1: Double, AV2: Double, AV3: Double, EDAG: Double){
        self.AV1 = AV1
        self.AV2 = AV2
        self.AV3 = AV3
        self.EDAG = EDAG
    }
    
    func mediaDoSemestre() -> Double{
        let media = (AV1 * 0,25) + (AV2 * 0,25) + (AV3 * 0,3) + (EDAG * 0,2)
        
        return media
    }
    
}


let disciplina1 = CalculadoraDeNotas(AV1: 7, AV2: 5, AV3: 10, EDAG: 5)
disciplina1.mediaDoSemestre()
