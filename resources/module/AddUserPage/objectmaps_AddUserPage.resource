*** Variables ***
${add_btn}                  xpath://*[text()=' Add ']
${role_dropdown}            xpath://div[text()='-- Select --']
${admin_role}               xpath://div[@role='option'][2]
${status_dropdown}          xpath://div[text()='-- Select --']
${enable_status}            xpath://div[@role='option'][2]
${employee_input}           css:[placeholder='Type for hints...']
${adalwin}                  xpath://*[contains(text(),'Adalwin')]
${username_input}           css:[autocomplete="off"]
${password_input}           xpath://label[text()='Password']/parent::div/following-sibling::div/child::input
${confirmPassword_input}    xpath://label[text()='Confirm Password']/parent::div/following-sibling::div/child::input
${submit_btn}               xpath://*[@type='submit']
${username_search}          xpath://label[text()='Username']/parent::div/following-sibling::div/child::input
${search_btn}               xpath://button[text()=' Search ']