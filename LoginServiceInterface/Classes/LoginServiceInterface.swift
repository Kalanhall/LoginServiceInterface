//
//  LoginServiceInterface.swift
//  LoginServiceInterface
//
//  Created by Logic on 2019/11/14.
//

@_exported import CTMediator

public extension CTMediator {
    @objc public func login(with parameters:  NSDictionary?) -> UIViewController {
        var params = (parameters ?? [:]) as! [AnyHashable : Any]
        params.updateValue("HomeService", forKey: kCTMediatorParamsKeySwiftTargetModuleName)
        
        if let vc = self.performTarget("LoginService", action: "nativeToLogin", params: params, shouldCacheTarget: false) as? UIViewController {
            return vc
        }
        return UIViewController()
    }
}
