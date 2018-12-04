//
//  PhotoCache.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Cache<Key: Hashable, Value> {
    
    func cache(value: Value, for key: Key) {
        cache[key] = value
    }
    
    func value(for key: Key) -> Value? {
        return cache[key]
    }
    
    // let make a func to clear the cache
    func clear () {
        queue.async {
            self.cache.removeAll()
        }
        
    }


    private var cache = [Key : Value]()
    
    // lets make it thread safe
    private let queue = DispatchQueue(label: "com.JerrickWarren.Astronomy.CachedQeue")
}
