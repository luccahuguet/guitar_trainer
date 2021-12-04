# import Unicode
# using Pkg
# Pkg.add("Unicode")
# using Unicode

function train_notes_names()
  # notes_dict = Dict("A" => "Lá", "B" => "Si", "C" => "Dó", "D" => "Ré", "E" => "Mi", "F" => "Fá", "G" => "Sol")
  notes_array = (("A", "Lá"), ("B", "Si"), ("C", "Dó"), ("D", "Ré"), ("E", "Mi"), ("F", "Fá"), ("G", "Sol"))

  wish_to_continue = "y"

  while wish_to_continue != "q"

    # get random note
    note_idx = rand(1:length(notes_array))
    random_note = notes_array[note_idx][1]

    # get user input
    println("\nWhat is the name of the note ", random_note, "?")
    note_name = readline()

    # check if user input is correct
    if normalize(uppercase(note_name)) == normalize(uppercase(notes_array[note_idx][2]))
      println("Correct!")
  else
      println("Wrong! The correct answer is", notes_array[note_idx][2])
    end

    println("\nDo you want to continue? (y/n)")
    wish_to_continue = readline()
  end
end

train_notes_names()