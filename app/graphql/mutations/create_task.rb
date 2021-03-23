module Mutations
  class CreateTask < GraphQL::Schema::RelayClassicMutation
    graphql_name 'CreateTask'

    field :task, Types::TaskType, null: true
    field :result, Boolean, null: true

    argument :title, String, required: false
    argument :description, String, required: false

    def resolve(**args)
      task = Task.create(
        title: args[:title],
        description: args[:description],
        completed: false
      )
      {
        task: task,
        result: task.errors.blank?
      }
    end
  end
end