require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Contact", with: @project.contact_id
    fill_in "Date completed", with: @project.date_completed
    fill_in "Date started", with: @project.date_started
    fill_in "Description", with: @project.description
    fill_in "Estimated cost", with: @project.estimated_cost
    fill_in "House", with: @project.house_id
    fill_in "Notes", with: @project.notes
    fill_in "Priority", with: @project.priority
    fill_in "Status", with: @project.status
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @project.contact_id
    fill_in "Date completed", with: @project.date_completed
    fill_in "Date started", with: @project.date_started
    fill_in "Description", with: @project.description
    fill_in "Estimated cost", with: @project.estimated_cost
    fill_in "House", with: @project.house_id
    fill_in "Notes", with: @project.notes
    fill_in "Priority", with: @project.priority
    fill_in "Status", with: @project.status
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
