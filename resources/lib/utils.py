import string
import random
from selenium import webdriver
from robot.libraries.BuiltIn import BuiltIn

bi = BuiltIn()

def enter_text_key_press(element,value):
    bi.run_keyword('Input Text', element, value)
    bi.run_keyword('Press Key', element, '\\\\13')

def get_element_text(element):
    driver = webdriver.Chrome
    elements= driver.find_element_by_id(element)
    element_tag_text = elements.get_attribute("innerHTML")
    return element_tag_text

def generate_username():
    username = 'hanif'+''.join(random.choices(string.digits, k=3))
    return str(username)

def generate_password():
    password = ''.join(random.choices(string.ascii_letters + string.digits, k=15))
    return str(password)