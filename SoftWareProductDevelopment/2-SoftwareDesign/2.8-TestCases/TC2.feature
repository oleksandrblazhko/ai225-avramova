Scenario: Інтенсивність освітлення менше або дорівнює 0
  Given я запитую освітлення
  And поточний рівень інтенсивності освітлення дорівнює 0
  And час доби становить "14:45"
  Then результат повинен бути -1
