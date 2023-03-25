Feature: Negative Login Scenario

  @wip
  Scenario Outline: Get error message by invalid email and password
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then Get error text "<message>" with "<userType>"
    Examples:
      | userType                 | password   | message                                                                                                |
      | teacherbootflow.academy  | Test12345! | Lütfen e-posta adresine bir \"@\" işareti ekleyin. \"teacherbootflow.academy\" adresinde \"@\" eksik.  |
      | teacher@bootflow.academy | Te         | Lütfen bu metni 6 karakter veya daha fazla olacak şekilde uzatın (şu anda 2 karakter kullanıyorsunuz). |