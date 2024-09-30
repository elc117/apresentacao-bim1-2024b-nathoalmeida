boundingBoxCheck :: (Float, Float, Float, Float)  -> Bool
boundingBoxCheck boundingBox = (\(x1, y1, x2, y2) -> x2 >= x1 && y2 >= y1) boundingBox

areBoundingBoxesValid :: [(Float, Float, Float, Float)] -> Bool
areBoundingBoxesValid boundingBoxes = foldl1 (\x y -> x && y && True) (map boundingBoxCheck boundingBoxes)

-- alternativa utilizando a função all
areBoundingBoxesValid2 :: [(Float, Float, Float, Float)] -> Bool
areBoundingBoxesValid2 boundingBoxes = all boundingBoxCheck boundingBoxes
