# Database Domain Modelling 
**Class Responsiblity Collaborator**(CRC) is a collection of standard index cards that is <u>divided</u> into 3 sections. A **<u>class</u>** represents a collection of similar objects, a **<u>Responsibility</u>** is something that a class knows or does, and a **<u>collaborator</u>** is another class that interacts with your current class to fulfil a given responsibility.

_A CRC Table_
[![Image from Gyazo](https://i.gyazo.com/14a6ba797b2c6b05010d80e7ce13f487.png)](https://gyazo.com/14a6ba797b2c6b05010d80e7ce13f487)


**<u>Class</u>** represents a collection of similar objects and an object is a noun or a concept that is relevant to the system at hannd. We use a singular names as each class represents a generalized version of a singular object. The information about a _student_(for example) describes a single individual and not a group of people. Therefore we will say a class Student and not Students.

**<u>Responsility</u>** is anything that the class knows of or does. For the student example, a student can enrol onto a seminar, drop out of a seminar and request a transcript. These are all things a student can do and hence the class should know about.

*A class is able to change the values of the things it knows but unable yo change the values of what other classes know of.


[![Image from Gyazo](https://i.gyazo.com/fd0aead648b75b8117850609e8c0de8d.png)](https://gyazo.com/fd0aead648b75b8117850609e8c0de8d)


**<u>Collaboration</u>** At times a class has a responsibility to fulfil, however may not have enough information to complete it. A student may wish to enrol onto a seminar, but to complete this, they must knnow if the seminar has space. At this point, the student only have their information (withing the class Student) and no knowledge of the seminar's information, therefore they must **collaborate**/interact with the seminar to gain more information.

**<u>Pairing Session</u>**
[CRC Cards](https://github.com/makersacademy/skills-workshops/tree/master/week-4/domain_modelling_student_directory_using_crc_cards)
[![Image from Gyazo](https://i.gyazo.com/6dd2914d358f4c92ca65800c0ffa3227.png)](https://gyazo.com/6dd2914d358f4c92ca65800c0ffa3227)