classifica :: Float -> Float -> (Float, String)
classifica w h
  | imc < 18.5 = (imc, "low")
  | imc < 25 = (imc, "normal")
  | imc < 30 = (imc, "exceed")
  | imc > 0 = (imc, "obese")
  | otherwise = (imc, "invalid")
  where
    imc = w / h ^ 2