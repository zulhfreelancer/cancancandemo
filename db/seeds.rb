Role.where(name: 'Admin').first_or_create
Role.where(name: 'Staff').first_or_create
Role.where(name: 'Subscriber').first_or_create
