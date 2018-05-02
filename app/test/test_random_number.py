from random_number import RandomNumber


def test_get_returns_between_minimum_and_maximum():
    under_test = RandomNumber()
    under_test.minimum = 1
    under_test.maximum = 2

    for _ in range(100):
        rand = under_test.get()
        assert rand >= 1
        assert rand <= 2


def test_get_returns_between_minimum_and_param():
    under_test = RandomNumber()
    under_test.minimum = 55
    for _ in range(100):
        rand = under_test.get(56)
        assert rand >= 55
        assert rand <= 56
