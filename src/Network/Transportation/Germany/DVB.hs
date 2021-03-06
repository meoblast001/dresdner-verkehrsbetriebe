-- |
-- Module: Network.Transportation.Germany.DVB
-- Copyright: (C) 2015 Braden Walters
-- License: MIT (see LICENSE file)
-- Maintainer: Braden Walters <vc@braden-walters.info>
-- Stability: experimental
-- Portability: ghc

module Network.Transportation.Germany.DVB
( Location(..)
, City(..)
, TimeType(..)
, defaultCity
) where

-- |The name of a location in the city.
newtype Location = Location String

instance Show Location where
  show (Location str) = str

-- |The name of the city (probably Dresden).
newtype City = City String

instance Show City where
  show (City str) = str

-- |Whether the time should be interpreted as departure or arrival time.
data TimeType = DepartureTime | ArrivalTime

instance Show TimeType where
  show DepartureTime = "dep"
  show ArrivalTime = "arr"

-- |The default city, Dresden.
defaultCity :: City
defaultCity = City "Dresden"
