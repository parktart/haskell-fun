-- roundToTwoDecimalPlaces :: Double -> Double
-- roundToTwoDecimalPlaces x = (fromIntegral (round (x * 100))) / 100

-- roundedNumber = roundToTwoDecimalPlaces 0.145

-- main :: IO ()
-- main = putStrLn (show roundedNumber)


-- roundToTwoDecimalPlaces :: Double -> Double
-- roundToTwoDecimalPlaces x = fromIntegral (round (x * multiplier)) / multiplier
--  where
--    multiplier = 10 ^ precision
--    precision = 2

-- main :: IO ()
-- main = print (roundToTwoDecimalPlaces 0.145)


import Data.Number.CReal

roundToTwoDecimalPlaces :: Double -> Double
roundToTwoDecimalPlaces x = fromRational (toRational (roundTo 2 (toRational x)))

main :: IO ()
main = print (roundToTwoDecimalPlaces 0.145)

main :: IO ()
main = print (roundToTwoDecimalPlaces 0.145)
