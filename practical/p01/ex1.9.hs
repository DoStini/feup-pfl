classifica :: Int -> String
classifica grade
  | grade < 0 || grade > 20 = "invalido"
  | grade <= 9 = "reprovado"
  | grade <= 12 = "suficiente"
  | grade <= 15 = "bom"
  | grade <= 18 = "very bom"
  | grade <= 12 = "very very bom"