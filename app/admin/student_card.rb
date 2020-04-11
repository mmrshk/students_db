ActiveAdmin.register StudentCard do
  permit_params :student_id, :staff_id, :book_id, :name, :date_of_issuing, :date_of_return

  form do |f|
    f.semantic_errors(*f.object.errors.keys)

    f.inputs do
      f.input :student_id,as: :select, collection: Student.all.pluck(:id)
      f.input :book_id, as: :select, collection: Book.all.pluck(:id)
      f.input :staff_id, as: :select, collection: Staff.all.pluck(:id)

      f.input :name
      f.input :date_of_issuing
      f.input :date_of_return
    end

    f.actions
  end
end
