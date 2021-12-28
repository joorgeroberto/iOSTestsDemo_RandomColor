//
//  TestsDemo_RandomColorTests.swift
//  TestsDemo_RandomColorTests
//
//  Created by Jorge de Carvalho on 28/12/21.
//

import XCTest
@testable import TestsDemo_RandomColor

class TestsDemo_RandomColorTests: XCTestCase {
    var viewControler: ViewController?
    
    override func setUpWithError() throws {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        viewControler = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as? ViewController
        // Forçando o carregamento da viewController para iniciar o ciclo de vida
        viewControler?.loadView()
    }

    override func tearDownWithError() throws {
        // Reiniciando o valor da ViewController para garantir que um teste não influenciar no outro.
        viewControler = nil
    }

    func testButtonAction() {
        let firstColor = viewControler?.titleLabel.textColor
        XCTAssertEqual(firstColor, UIColor.black)
        
        // Simulando o click do botão para gerar uma cor aleatória
        viewControler?.generateRandomColor(UIButton())
        // Como não podemos testar a nova cor já que esta é randômica, vamos testar apenas se a cor atual é diferente da anterior.
        XCTAssertFalse(firstColor == viewControler?.titleLabel.textColor)
    }
}
