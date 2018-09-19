//
//  HelloController.swift
//  App
//
//  Created by ZhaoHeng on 2018/9/19.
//

import Vapor
import Crypto

final class HelloController {
    func greet(_ req: Request) throws -> String {
        return "Hello Vapor"
    }
    func greet2(_ req: Request) throws -> String {
        return req.makeResponse("Hello").description
    }
    func greetSelf(_ req: Request) throws -> String {
        return "大家好! 我是你们的老朋友! 恒哥 ^_^"
    }
}
