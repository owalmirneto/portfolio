# frozen_string_literal: true

module RequestsHelper
  def random_uuid
    SecureRandom.uuid
  end

  def json_body_data
    json_body[:data] if json_body.present?
  end

  def json_body
    return if response.body.blank?

    @json_body ||= JSON.parse(response.body, symbolize_names: true)
  end
end
