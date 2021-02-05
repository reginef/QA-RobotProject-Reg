*** Settings ***
Library    SeleniumLibrary    
 
*** Test Cases ***
loginTest1
    Open Browser    https://opensource-demo.orangehrmlive.com/     ff
    Maximize Browser Window

    #${speed}    = Get Selenium Speed
    #Log To Console    ${speed}     
    
    Set Selenium Speed    5s          #temps d'arret apres chaque instruction
    

    Input Text    xpath=//input[@id='txtUsername']  Admin
    Input Text   xpath=//input[@id='txtPassword']  admin123
    Click Button    xpath=//input[@id='btnLogin']  
    
logoutTest2
    Open Browser    https://opensource-demo.orangehrmlive.com/     ff
    Maximize Browser Window

    #${speed}    = Get Selenium Speed
    #Log To Console    ${speed}     
    
    Set Selenium Speed    5s          #temps d'arret apres chaque instruction
    
    Input Text    xpath=//input[@id='txtUsername']  Admin
    Input Text   xpath=//input[@id='txtPassword']  admin123
    Click Button    xpath=//input[@id='btnLogin'] 
    Click Link    xpath=//a[@id='welcome']   
    Click Link    link=Logout    

loginTest3
    Open Browser    https://opensource-demo.orangehrmlive.com/     ff
    Maximize Browser Window
    
    ${timeout} =    Get Selenium timeout 
    Log To Console    ${timeout}   
    
    Set Selenium Timeout    20s
    
    ${timeout} =    Get Selenium timeout 
    Log To Console    ${timeout} 
    
    #${speed}=     Get Selenium Speed
    #Log To Console    ${speed}     
    

    Input Text    xpath=//input[@id='txtUsername']  Admin
    Input Text   xpath=//input[@id='txtPassword']  admin123
    Click Button    xpath=//input[@id='btnLogin']  
    Wait Until Page Contains    Dashboard    
    
loginTest4
    Open Browser    https://opensource-demo.orangehrmlive.com/     ff
    Maximize Browser Window
    
 
    #${speed}=     Get Selenium Speed
    #Log To Console    ${speed}     
    

    Input Text    xpath=//input[@id='txtUsername']  Admin
    Input Text   xpath=//input[@id='txtPassword']  admin123
    
    Set Selenium Implicit Wait    20s        #attendre pour un élément specifique
    
    Click Button    xpath=//input[@id='btnLogin1']  
      

 