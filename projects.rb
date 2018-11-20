project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    },
    {description: "Wrap up",
     due_date: "December 1, 2019"
    }
  ]
}
counter = 0
puts project [steps].each do |step|
  counter += 1
  if counter <= 3
    step[:person] = project[:committee][0]
  elsif counter >= 4 && counter <= 6
      step[:person] = project[:committee][1]
  elsif counter >= 7 && counter <= 9
      step[:person] = project[:committee][2]
  end

end
  puts project








#puts joblist(:description)

#1 update project
#2 shovel each item in committee into each :steps
#3 but do this only 3 times.
#
# def tasks(hash)
# num_of_people = hash[:committee].length
# num_of_steps = hash[:steps].length
# num_of_tasks = num_of_people / num_of_steps
# num_of_tasks << tasks
#
# end
#
# puts tasks
