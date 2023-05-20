import { Turbo } from "@hotwired/turbo-rails"
import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"

Rails.start()
ActiveStorage.start()

const importAll = (requireContext) => requireContext.keys().forEach(requireContext)
importAll(require.context("../stylesheets", true, /\.(css|scss|sass|less)$/))

window.Turbo = Turbo

