class Book

  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def borrow
    if self.lent_out?
      return false
    else
      @@on_loan << self
      @@on_shelf.delete(self)
    end
  end

  def return_to_library
    if self.lent_out?
      return false
    else
      @@on_shelf << self
    end
  end

  def lent_out?
    if @@on_loan.include?(self)
      return true
    else
      return false  ####
    end

  end

  def self.create(title, author, isbn)
    @@on_shelf << Book.new(title, author, isbn)
    return @@on_shelf #####
  end

  def current_due_date
    @due_date = Time.now + 14400
  end

  def overdue_books
    if current_due_date < Time.now
      late = []
      ######
    end

  end

  def browse
    return @@on_shelf.sample
  end

  def available
    return @@on_shelf
  end

  def borrowed
    return @@on_loan
  end

  def due_date=(due_date)
    @due_date = @due_date += 14400
  end

  def due_date
    @due_date
  end


end
