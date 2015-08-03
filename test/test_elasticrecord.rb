require 'minitest_helper'

class TestObject < ElasticRecord:Base

end

class TestElasticrecord < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Elasticrecord::VERSION
  end

  def test_it_does_something_useful
    assert false
  end


  def test_validity_of_object
    obj = TestObject.new

    assert(obj.valid?)
  end
end
