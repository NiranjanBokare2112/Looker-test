project_name: "ecom_test"

application: conversational_chat {
  label: "Conversational Chat for test_v2"

  # Dev mode (uncomment if needed)
  # url: "http://localhost:8080/bundle.js"

  # Production bundle
  file: "main.js"

  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes

    core_api_methods: [
      "me",
      "all_dashboards",
      "dashboard",
      "all_lookml_models",
      "lookml_model_explore",
      "search_dashboards",
      "create_dashboard_element",
      "update_dashboard_element",
      "delete_dashboard_element",
      "dashboard_element",
      "run_inline_query",
      "run_query",
      "query"
    ]

    external_api_urls: [
      "https://geminidataanalytics.googleapis.com",
      "https://bigquery.googleapis.com",
      "https://oauth2.googleapis.com",
      "http://localhost:8080",
      "https://cdn.jsdelivr.net"
    ]

    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth"
    ]

    scoped_user_attributes: [
      "google_cloud_project_id",
      "google_oauth_token",
      "google_oauth_client_id"
    ]
  }
}
