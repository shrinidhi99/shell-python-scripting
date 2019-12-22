from selenium import webdriver
from getpass import getpass
from time import sleep

usr = input('Enter username or email: ')
pwd = input('Enter password: ')
image_path = input('Enter your image path: ')

driver = webdriver.Chrome()
driver.get('https://twitter.com/login')

usr_box = driver.find_element_by_class_name('js-username-field')
usr_box.send_keys(usr)
sleep(3)

pwd_box = driver.find_element_by_class_name('js-password-field')
pwd_box.send_keys(pwd)
sleep(3)

login_button = driver.find_element_by_css_selector(
    'button.submit.EdgeButton.EdgeButton--primary.EdgeButtom--medium')
login_button.submit()
sleep(3)

image_box = driver.find_element_by_css_selector('input.file-input.js-tooltip')
image_box.send_keys(image_path)
sleep(3)

tweet_button = driver.find_elements_by_css_selector(
    'button.tweet.action.EdgeButton--primary.js-tweet-btn')
tweet_button.click()
