//
//  FilterPhotoOperation.swift
//  Astronomy
//
//  Created by Jerrick Warren on 12/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class FilterPhotoOperation: Operation {
    
    init(fetchPhotoOp: FetchPhotoOperation) {
        self.fetchPhotoOp = fetchPhotoOp
    }
    
    // main() is the method that gets called when the operation starts running
    override func main() {
        // Get the image data from the fetchPhotoOp
        
            //guard let image = UIImage.init(data: data) else { return }
        guard let imageData = fetchPhotoOp.imageData else { return }
        
        // filter it
        let filteredImage = UIImage(data: imageData)?.filtered()
        
        // Place it in the image property
        image = filteredImage
        
    }
    
    // this contatins the image data that we will filter
    
    let fetchPhotoOp: FetchPhotoOperation
    
    // this is where we will put the filtered image
    private(set) var image: UIImage?
    
}
