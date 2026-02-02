"""
Step definitions for the number category feature.
"""

from behave import given, when, then
from src.number_category import categorize_number
# TODO: Importáld a number_category modult, amikor elkészült

@given ('a szám értéke "{number}"')
def step_number_value(context, number):
    if '.' in number:
        context.szam = float(str(number))
    else:
        context.szam = int(str(number))
# TODO: Írd meg a step definition-öket a feature fájlban lévő scenáriók alapján

@when ('megkérdezem, hogy pozitív, negatív vagy nulla')
def step_get_polarity(context):
    context.result = categorize_number(context.szam)

@then ('a válasz "{answer}" kell legyen')
def step_get_answer(context, answer):
    assert context.result == answer