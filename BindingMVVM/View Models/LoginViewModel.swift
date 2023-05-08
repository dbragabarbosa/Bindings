//
//  LoginViewModel.swift
//  BindingMVVM
//
//  Created by Daniel Braga Barbosa on 31/03/23.
//

import Foundation

class Dynamic<T>
{
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T
    {
        didSet
        {
            listener?(value)
        }
    }
    
    func bind(callback: @escaping (T) -> Void)
    {
        self.listener = callback
    }
    
    init(_ value: T)
    {
        self.value = value
    }
}

struct LoginViewModel
{
    var username = Dynamic("")
    var password = Dynamic("")
}
