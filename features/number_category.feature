Feature: Szám kategorizálása
  Mint felhasználó
  Szeretném tudni, hogy egy szám pozitív, negatív vagy nulla
  Hogy döntéseket hozhassak

  Scenario Outline: polaritás tesztelése
    Given a szám értéke "<szam>"
    When megkérdezem, hogy pozitív, negatív vagy nulla
    Then a válasz "<antworten>" kell legyen

  Examples:
    | szam | antworten |
    | 0 | Nulla |
    | 5 | Pozitív |
    | -3 | Negatív |
    | 2.1 | Tizedestört |
    | 101010101010110101010 | Nagy szám |