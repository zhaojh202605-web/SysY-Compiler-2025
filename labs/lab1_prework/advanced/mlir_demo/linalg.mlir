func @vecadd(%A: memref<16xf32>, %B: memref<16xf32>, %C: memref<16xf32>) {
  linalg.generic {
    indexing_maps = [affine_map<(i) -> (i)>, affine_map<(i) -> (i)>, affine_map<(i) -> (i)>],
    iterator_types = ["parallel"]
  } ins(%A, %B : memref<16xf32>, memref<16xf32>) outs(%C : memref<16xf32>) {
  ^bb0(%a: f32, %b: f32, %c: f32):
    %0 = arith.addf %a, %b : f32
    linalg.yield %0 : f32
  }
  return
}