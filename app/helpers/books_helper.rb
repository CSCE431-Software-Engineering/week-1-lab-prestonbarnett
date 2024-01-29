module BooksHelper
  def formatted_date(date)
    if date.present?
      date.strftime("%B %e, %Y")
    else
      "No Date Available"
    end
  end

  def get_field(book, field)
    if book.public_send(field).present?
      book.public_send(field)
    else
      "#{field.to_s.titleize} Unknown"
    end
  end
end
