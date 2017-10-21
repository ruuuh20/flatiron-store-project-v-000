last error - button is there and tested with javascript console:
document.querySelectorAll("input[type=submit][value='Add to Cart']")


link works and everything but the test fails,
same error in the review video?
told to skip the test (put "x" before it, so "xit") becaue something is off with the test




Failures:

  1) Feature Test: Category Item List logged in does display "Add To Cart" button
     Failure/Error: expect(page).to have_selector("input[value='Add to Cart']")
       expected to find css "input[value='Add to Cart']" but there were no matches
     # ./spec/features/category_feature_spec.rb:37:in `block (4 levels) in <top (required)>'

     Failed examples:

rspec ./spec/features/category_feature_spec.rb:34 # Feature Test: Category Item List logged in does display "Add To Cart" button




Added
@user.current_cart = Cart.create

to test line 69
