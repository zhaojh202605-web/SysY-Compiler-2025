module {
  func @vecadd(%arg0: memref<16xf32>, %arg1: memref<16xf32>, %arg2: memref<16xf32>) {
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c16 step %c1 {
      %0 = memref.load %arg0[%arg3] : memref<16xf32>
      %1 = memref.load %arg1[%arg3] : memref<16xf32>
      %2 = arith.addf %0, %1 : f32
      memref.store %2, %arg2[%arg3] : memref<16xf32>
    }
    return
  }
}

