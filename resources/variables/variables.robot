*** Variables ***
${url}   https://tdd-detroid.onrender.com/
${browser}    Chrome

${title}    body > div > div:nth-child(1) > div.text-center.w-full.mb-8 > h1
${name_student}   student-nome
${btn_student}    student-btn

${name_course}    course-nome
${btn_course}     course-btn

${id_student}     student-id
${id_course}      course-id
${btn_subscribe_student}    xpath=//input[@id="course-id"]/following-sibling::button

${name_discipline}             discipline-nome
${id_discipline_course}        course-discipline-id
${btn_add_discipline}          css=button[py-click="add_discipline()"]

${id_student_subscribe}        subscribe-student-id
${id_discipline_subscribe}     subscribe-discipline-id
${btn_subscribe_discipline}    css=button[py-click="subscribe_discipline()"]


${events}    //*[@id="local-terminal"]/pre

