Scenario: Інтенсивність освітлення менша за 0
  Given я запитую освітлення
  And поточний рівень інтенсивності освітлення дорівнює -5
  And час доби становить "14:45"
  Then результат повинен бути -1