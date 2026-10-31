import pytest


@pytest.fixture
def some_example_data():
    return {
        "data": "some stuff"
    }

def test_always_passes():
    assert True

def test_always_fails():
    assert False