toBits :: Int -> [Int]
toBits 0 = []
toBits v = toBits (div v 2) ++ [mod v 2]