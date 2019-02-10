module BooksHelper
  def envelope_for(book, options = {size: 80})
    size = options[:size]
    if book.envelope?
      image_tag book.envelope.url(:thumb), width: size
    else
      image_tag 'no_image.jpg', width: size
    end
  end
end
