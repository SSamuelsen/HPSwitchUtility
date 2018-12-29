//
//  main.swift
//  HPProCurveSwitchUtility
//
//  Created by Stephen Samuelsen on 12/22/18.
//  Copyright © 2018 Stephen Samuelsen. All rights reserved.
//

import Cocoa

///dev/cu.usbserial-AI04JACE 9600


class HPProCurve {
    
    func execute(commandName: String) {
        
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/bin/\(commandName)")
        process.arguments = []
        process.terminationHandler = { (process) in
            print("finished")
        }
        do {
            try process.run()
        }
        catch {}
        
        
    }//end func
    
 
}//end class


let HpUtility = HPProCurve()
HpUtility.execute(commandName: "ls")     //just testing to see if function works


















