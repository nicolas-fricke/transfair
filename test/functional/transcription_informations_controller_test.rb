require 'test_helper'

class TranscriptionInformationsControllerTest < ActionController::TestCase
  setup do
    @transcription_information = transcription_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcription_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcription_information" do
    assert_difference('TranscriptionInformation.count') do
      post :create, transcription_information: { audio_quality: @transcription_information.audio_quality, background_information: @transcription_information.background_information, category_id: @transcription_information.category_id, duration: @transcription_information.duration, ending_point: @transcription_information.ending_point, field_id: @transcription_information.field_id, is_content_focused: @transcription_information.is_content_focused, is_detailed_transcription: @transcription_information.is_detailed_transcription, number_speaker: @transcription_information.number_speaker, recurring_denominations: @transcription_information.recurring_denominations, speaker_accent: @transcription_information.speaker_accent, starting_point: @transcription_information.starting_point, with_emotion_interjection: @transcription_information.with_emotion_interjection, with_interruption: @transcription_information.with_interruption, with_pause: @transcription_information.with_pause, with_pause_interjection: @transcription_information.with_pause_interjection, with_time_stamp: @transcription_information.with_time_stamp }
    end

    assert_redirected_to transcription_information_path(assigns(:transcription_information))
  end

  test "should show transcription_information" do
    get :show, id: @transcription_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcription_information
    assert_response :success
  end

  test "should update transcription_information" do
    put :update, id: @transcription_information, transcription_information: { audio_quality: @transcription_information.audio_quality, background_information: @transcription_information.background_information, category_id: @transcription_information.category_id, duration: @transcription_information.duration, ending_point: @transcription_information.ending_point, field_id: @transcription_information.field_id, is_content_focused: @transcription_information.is_content_focused, is_detailed_transcription: @transcription_information.is_detailed_transcription, number_speaker: @transcription_information.number_speaker, recurring_denominations: @transcription_information.recurring_denominations, speaker_accent: @transcription_information.speaker_accent, starting_point: @transcription_information.starting_point, with_emotion_interjection: @transcription_information.with_emotion_interjection, with_interruption: @transcription_information.with_interruption, with_pause: @transcription_information.with_pause, with_pause_interjection: @transcription_information.with_pause_interjection, with_time_stamp: @transcription_information.with_time_stamp }
    assert_redirected_to transcription_information_path(assigns(:transcription_information))
  end

  test "should destroy transcription_information" do
    assert_difference('TranscriptionInformation.count', -1) do
      delete :destroy, id: @transcription_information
    end

    assert_redirected_to transcription_informations_path
  end
end
