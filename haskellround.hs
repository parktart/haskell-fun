roundToTwoDecimalPlaces :: Double -> Double
roundToTwoDecimalPlaces x = (fromIntegral (round (x * 100))) / 100

-- Example usage:
roundedNumber = roundToTwoDecimalPlaces 0.145
