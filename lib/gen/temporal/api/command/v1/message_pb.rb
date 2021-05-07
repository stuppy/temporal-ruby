# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/api/command/v1/message.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'temporal/api/enums/v1/workflow_pb'
require 'temporal/api/enums/v1/command_type_pb'
require 'temporal/api/common/v1/message_pb'
require 'temporal/api/failure/v1/message_pb'
require 'temporal/api/taskqueue/v1/message_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("temporal/api/command/v1/message.proto", :syntax => :proto3) do
    add_message "temporal.api.command.v1.ScheduleActivityTaskCommandAttributes" do
      optional :activity_id, :string, 1
      optional :activity_type, :message, 2, "temporal.api.common.v1.ActivityType"
      optional :namespace, :string, 3
      optional :task_queue, :message, 4, "temporal.api.taskqueue.v1.TaskQueue"
      optional :header, :message, 5, "temporal.api.common.v1.Header"
      optional :input, :message, 6, "temporal.api.common.v1.Payloads"
      optional :schedule_to_close_timeout, :message, 7, "google.protobuf.Duration"
      optional :schedule_to_start_timeout, :message, 8, "google.protobuf.Duration"
      optional :start_to_close_timeout, :message, 9, "google.protobuf.Duration"
      optional :heartbeat_timeout, :message, 10, "google.protobuf.Duration"
      optional :retry_policy, :message, 11, "temporal.api.common.v1.RetryPolicy"
    end
    add_message "temporal.api.command.v1.RequestCancelActivityTaskCommandAttributes" do
      optional :scheduled_event_id, :int64, 1
    end
    add_message "temporal.api.command.v1.StartTimerCommandAttributes" do
      optional :timer_id, :string, 1
      optional :start_to_fire_timeout, :message, 2, "google.protobuf.Duration"
    end
    add_message "temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributes" do
      optional :result, :message, 1, "temporal.api.common.v1.Payloads"
    end
    add_message "temporal.api.command.v1.FailWorkflowExecutionCommandAttributes" do
      optional :failure, :message, 1, "temporal.api.failure.v1.Failure"
    end
    add_message "temporal.api.command.v1.CancelTimerCommandAttributes" do
      optional :timer_id, :string, 1
    end
    add_message "temporal.api.command.v1.CancelWorkflowExecutionCommandAttributes" do
      optional :details, :message, 1, "temporal.api.common.v1.Payloads"
    end
    add_message "temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributes" do
      optional :namespace, :string, 1
      optional :workflow_id, :string, 2
      optional :run_id, :string, 3
      optional :control, :string, 4
      optional :child_workflow_only, :bool, 5
    end
    add_message "temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributes" do
      optional :namespace, :string, 1
      optional :execution, :message, 2, "temporal.api.common.v1.WorkflowExecution"
      optional :signal_name, :string, 3
      optional :input, :message, 4, "temporal.api.common.v1.Payloads"
      optional :control, :string, 5
      optional :child_workflow_only, :bool, 6
    end
    add_message "temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributes" do
      optional :search_attributes, :message, 1, "temporal.api.common.v1.SearchAttributes"
    end
    add_message "temporal.api.command.v1.RecordMarkerCommandAttributes" do
      optional :marker_name, :string, 1
      map :details, :string, :message, 2, "temporal.api.common.v1.Payloads"
      optional :header, :message, 3, "temporal.api.common.v1.Header"
      optional :failure, :message, 4, "temporal.api.failure.v1.Failure"
    end
    add_message "temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributes" do
      optional :workflow_type, :message, 1, "temporal.api.common.v1.WorkflowType"
      optional :task_queue, :message, 2, "temporal.api.taskqueue.v1.TaskQueue"
      optional :input, :message, 3, "temporal.api.common.v1.Payloads"
      optional :workflow_run_timeout, :message, 4, "google.protobuf.Duration"
      optional :workflow_task_timeout, :message, 5, "google.protobuf.Duration"
      optional :backoff_start_interval, :message, 6, "google.protobuf.Duration"
      optional :retry_policy, :message, 7, "temporal.api.common.v1.RetryPolicy"
      optional :initiator, :enum, 8, "temporal.api.enums.v1.ContinueAsNewInitiator"
      optional :failure, :message, 9, "temporal.api.failure.v1.Failure"
      optional :last_completion_result, :message, 10, "temporal.api.common.v1.Payloads"
      optional :cron_schedule, :string, 11
      optional :header, :message, 12, "temporal.api.common.v1.Header"
      optional :memo, :message, 13, "temporal.api.common.v1.Memo"
      optional :search_attributes, :message, 14, "temporal.api.common.v1.SearchAttributes"
    end
    add_message "temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributes" do
      optional :namespace, :string, 1
      optional :workflow_id, :string, 2
      optional :workflow_type, :message, 3, "temporal.api.common.v1.WorkflowType"
      optional :task_queue, :message, 4, "temporal.api.taskqueue.v1.TaskQueue"
      optional :input, :message, 5, "temporal.api.common.v1.Payloads"
      optional :workflow_execution_timeout, :message, 6, "google.protobuf.Duration"
      optional :workflow_run_timeout, :message, 7, "google.protobuf.Duration"
      optional :workflow_task_timeout, :message, 8, "google.protobuf.Duration"
      optional :parent_close_policy, :enum, 9, "temporal.api.enums.v1.ParentClosePolicy"
      optional :control, :string, 10
      optional :workflow_id_reuse_policy, :enum, 11, "temporal.api.enums.v1.WorkflowIdReusePolicy"
      optional :retry_policy, :message, 12, "temporal.api.common.v1.RetryPolicy"
      optional :cron_schedule, :string, 13
      optional :header, :message, 14, "temporal.api.common.v1.Header"
      optional :memo, :message, 15, "temporal.api.common.v1.Memo"
      optional :search_attributes, :message, 16, "temporal.api.common.v1.SearchAttributes"
    end
    add_message "temporal.api.command.v1.Command" do
      optional :command_type, :enum, 1, "temporal.api.enums.v1.CommandType"
      oneof :attributes do
        optional :schedule_activity_task_command_attributes, :message, 2, "temporal.api.command.v1.ScheduleActivityTaskCommandAttributes"
        optional :start_timer_command_attributes, :message, 3, "temporal.api.command.v1.StartTimerCommandAttributes"
        optional :complete_workflow_execution_command_attributes, :message, 4, "temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributes"
        optional :fail_workflow_execution_command_attributes, :message, 5, "temporal.api.command.v1.FailWorkflowExecutionCommandAttributes"
        optional :request_cancel_activity_task_command_attributes, :message, 6, "temporal.api.command.v1.RequestCancelActivityTaskCommandAttributes"
        optional :cancel_timer_command_attributes, :message, 7, "temporal.api.command.v1.CancelTimerCommandAttributes"
        optional :cancel_workflow_execution_command_attributes, :message, 8, "temporal.api.command.v1.CancelWorkflowExecutionCommandAttributes"
        optional :request_cancel_external_workflow_execution_command_attributes, :message, 9, "temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributes"
        optional :record_marker_command_attributes, :message, 10, "temporal.api.command.v1.RecordMarkerCommandAttributes"
        optional :continue_as_new_workflow_execution_command_attributes, :message, 11, "temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributes"
        optional :start_child_workflow_execution_command_attributes, :message, 12, "temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributes"
        optional :signal_external_workflow_execution_command_attributes, :message, 13, "temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributes"
        optional :upsert_workflow_search_attributes_command_attributes, :message, 14, "temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributes"
      end
    end
  end
end

module Temporal
  module Api
    module Command
      module V1
        ScheduleActivityTaskCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ScheduleActivityTaskCommandAttributes").msgclass
        RequestCancelActivityTaskCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RequestCancelActivityTaskCommandAttributes").msgclass
        StartTimerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.StartTimerCommandAttributes").msgclass
        CompleteWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributes").msgclass
        FailWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.FailWorkflowExecutionCommandAttributes").msgclass
        CancelTimerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CancelTimerCommandAttributes").msgclass
        CancelWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CancelWorkflowExecutionCommandAttributes").msgclass
        RequestCancelExternalWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributes").msgclass
        SignalExternalWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributes").msgclass
        UpsertWorkflowSearchAttributesCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributes").msgclass
        RecordMarkerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RecordMarkerCommandAttributes").msgclass
        ContinueAsNewWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributes").msgclass
        StartChildWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributes").msgclass
        Command = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.Command").msgclass
      end
    end
  end
end
