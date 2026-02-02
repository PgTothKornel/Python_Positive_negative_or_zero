Feature: Szám kategorizálása
  Mint felhasználó
  Szeretném tudni, hogy egy szám pozitív, negatív vagy nulla
  Hogy döntéseket hozhassak

  Scenario: Pozitív szám
    Given a szám értéke 5
    When megkérdezem, hogy pozitív, negatív vagy nulla
    Then a válasz "Pozitív" kell legyen

  Scenario: Pozitív szám
    Given a szám értéke -5
    When megkérdezem, hogy pozitív, negatív vagy nulla
    Then a válasz "Negatív" kell legyen

  Scenario: Pozitív szám
    Given a szám értéke 0
    When megkérdezem, hogy pozitív, negatív vagy nulla
    Then a válasz "Nulla" kell legyen