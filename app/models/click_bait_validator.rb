class ClickBaitValidator < ActiveModel::Validator
    def validate(record)
    if record.title != nil
        if record.title.include? "Won't Believe" || "Secret" || "Guess"
        else
            record.errors.add :base, "This person is evil"
            # record.title << ", Try to Guess!"
        end
    end
    end
  end