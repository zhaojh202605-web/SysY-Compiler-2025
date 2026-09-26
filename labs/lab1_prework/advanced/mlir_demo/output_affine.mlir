module {
  func @vecadd(%arg0: memref<16xf32>, %arg1: memref<16xf32>, %arg2: memref<16xf32>) {
    affine.for %arg3 = 0 to 16 {
      %0 = affine.load %arg0[%arg3] : memref<16xf32>
      %1 = affine.load %arg1[%arg3] : memref<16xf32>
      %2 = arith.addf %0, %1 : f32
      affine.store %2, %arg2[%arg3] : memref<16xf32>
    }
    return
  }
}

