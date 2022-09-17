# frozen_string_literal: true

# Service to download ftp files from the server
json.array! @recipes, partial: 'recipes/recipe', as: :recipe
