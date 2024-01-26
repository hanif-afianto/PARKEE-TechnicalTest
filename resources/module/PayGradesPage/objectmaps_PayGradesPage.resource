*** Variables ***
${JobList_btn}                    xpath://span[text()='Job ']
${PayGradeList_item}              xpath://a[text()='Pay Grades']
${add_btn}                        xpath://*[text()=' Add ']
${PayGradeName_input}             xpath://label[text()='Name']/parent::div/following-sibling::div/child::input
${PayGradeName_save_btn}          xpath://button[text()=' Save ']
${AddCurrencies_btn}              xpath://h6[text()='Currencies']/following-sibling::button[text()=' Add ']
${Currencies_dropdown}            xpath://div[text()='-- Select --']
${USD_Currency}                   xpath://span[text()='USD - United States Dollar']
${MinSalary_input}                xpath://label[text()='Minimum Salary']/parent::div/following-sibling::div/child::input
${MaxSalary_input}                xpath://label[text()='Maximum Salary']/parent::div/following-sibling::div/child::input
${AddCurrencies_save_button}      xpath://h6[text()='Add Currency']/following-sibling::form/descendant::button[text()=' Save ']