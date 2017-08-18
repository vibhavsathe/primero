FactoryGirl.define do
  factory :field, :traits => [:model] do
    type Field::TEXT_FIELD
    name { "field_#{counter}" }
    display_name { "Field #{counter}" }
    visible true
    editable true
    disabled false
  end

  factory :subform_field, class: Field, :traits => [:model] do
    transient do
      fields []
    end

    type Field::SUBFORM
    name { "field_#{counter}" }
    display_name { "Field #{counter}" }
    visible true
    editable true
    disabled false

    after(:build) do |field, evaluator|
      fs = create :subform_section, fields: evaluator.fields
      field.subform_section_id = fs.unique_id
    end
  end
end