def test_hire_noexperienceerror
  assert_raises(NoExperienceError) { employee.hire }
end