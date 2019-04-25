


Admin.destroy_all
Task.destroy_all
Project.destroy_all
Lead.destroy_all

###################################################### ADMIN SEED ################################################################################################

# AdminController Seed
Admin.create(name:'Lamb Chop', location:'NYC', username:'LambChop', password:'1234')

###################################################### TYPES OF PROJECTS / NAME OF BOARD #########################################################################

Project.create(name: 'Login Form')
Project.create(name: 'Group Chat Feature')
Project.create(name: 'Newsletter Form')
Project.create(name: 'Email Feature')
Project.create(name: 'Chat Feature')
Project.create(name: 'Loyalty Card Feature')

###################################################### PROJECT MANAGER AVATARS ###################################################################################

# PROJECT MANAGER AVATARS
Lead.create(name:'Alpha', stack:'Project Manager', img:'https://marketplace.canva.com/MAB5sgdjJk0/1/thumbnail_large/canva-glasses-girl-icon-MAB5sgdjJk0.png', admin_id:01)
Lead.create(name:'Beta', stack:'Project Manager', img:'https://cdn2.vectorstock.com/i/1000x1000/82/86/young-woman-private-avatar-icon-vector-11368286.jpg', admin_id:01)
Lead.create(name:'Gamma', stack:'Project Manager', img:'https://image.flaticon.com/icons/svg/145/145842.svg', admin_id:01)

# UX/UI DESIGNER AVATARS
Lead.create(name:'Kappa', stack:'UX/UI Designer', img:'https://marketplace.canva.com/MAB5sgdjJk0/1/thumbnail_large/canva-glasses-girl-icon-MAB5sgdjJk0.png', admin_id:01)
Lead.create(name:'Tau', stack:'UX/UI Designer', img:'https://image.flaticon.com/icons/svg/145/145846.svg', admin_id:01)
Lead.create(name:'Phi', stack:'UX/UI Designer', img:'https://image.flaticon.com/icons/svg/145/145843.svg', admin_id:01)

# FULLSTACK DEVELOPER AVATARS
Lead.create(name:'Theta', stack:'Fullstack Developer', img:'https://image.flaticon.com/icons/svg/145/145847.svg', admin_id:01)
Lead.create(name:'Delta', stack:'Fullstack Developer', img:'https://image.flaticon.com/icons/svg/145/145845.svg', admin_id:01)
Lead.create(name:'Omega', stack:'Fullstack Developer', img:'https://image.flaticon.com/icons/svg/145/145850.svg', admin_id:01)

###################################################### TASK SEED ################################################################################################
# Task Seed... all the information that will go on a specific project board

Task.create(title: 'Login Form', description:'Ensure Lead UX/UI andLead  Dev are adhering to sprint goals', status: 'Validate', project_id:01 , lead_id:01)
Task.create(title: 'Login Form', description:'Adhere to UX/UI Stadards', status: 'Stuck', project_id:01 , lead_id:04 )
Task.create(title: 'Login Form', description:'RESTFUL routes with Full Crud ', status: 'Working On It', project_id: 01, lead_id:9)

Task.create(title: 'Group Chat Feature', description:'Ensure Lead UX/UI and Lead Dev are adhering to sprint goals', status: 'Validate', project_id:02, lead_id:02)
Task.create(title: 'Group Chat Feature', description:'Adhere to UX/UI Stadards', status: 'Working On It', project_id:02, lead_id:05)
Task.create(title: 'Group Chat Feature', description:'RESTFUL routes with Full Crud ', status: 'Stuck', project_id:02, lead_id:8)

Task.create(title: 'Newsletter Form', description:'Ensure Lead UX/UI and Lead Dev are adhering to sprint goals', status: 'Validate', project_id: 03, lead_id:03)
Task.create(title: 'Newsletter Form', description:'Adhere to UX/UI Stadards', status: 'Research', project_id:03, lead_id:06)
Task.create(title: 'Newsletter Form', description:'RESTFUL routes with Full Crud ', status: 'Research', project_id:03, lead_id:8)

Task.create(title: 'Email Feature', description:'Ensure Lead UX/UI and Lead Dev are adhering to sprint goals', status: 'Validate', project_id:04, lead_id:03)
Task.create(title: 'Email Feature', description:'Adhere to UX/UI Stadards', status: 'Production!', project_id:04, lead_id:04)
Task.create(title: 'Email Feature', description:'RESTFUL routes with Full Crud ', status: 'Done', project_id:04, lead_id:9)

Task.create(title: 'Chat Feature', description:'Ensure Lead UX/UI and Lead Dev are adhering to sprint goals', status: 'Validate', project_id:05, lead_id:02)
Task.create(title: 'Chat Feature', description:'Adhere to UX/UI Stadards', status: 'Working On It', project_id:05, lead_id:06)
Task.create(title: 'Chat Feature', description:'RESTFUL routes with Full Crud ', status: 'Working On It', project_id:05, lead_id:07)

Task.create(title: 'Loyalty Card Feature', description:'Ensure Lead UX/UI and Lead Dev are adhering to sprint goals', status: 'Validate', project_id:06, lead_id:01)
Task.create(title: 'Loyalty Card Feature', description:'Adhere to UX/UI Stadards', status: 'Done', project_id:06, lead_id:05)
Task.create(title: 'Loyalty Card Feature', description:'RESTFUL routes with Full Crud ', status: 'Stuck', project_id:06, lead_id:07)
