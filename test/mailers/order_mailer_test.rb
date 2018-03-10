require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["juan@example.org"], mail.to
    assert_equal ["juan@example.com"], mail.from
    assert_match /1 x Pragramming Ruby 2.4/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped
    assert_equal "Pragmatic Stor Order Shipped", mail.subject
    assert_equal ["juan@example.org"], mail.to
    assert_equal ["juan@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 2.4<\/td>/, mail.body.encoded
  end

end
