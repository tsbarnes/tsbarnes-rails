ActionController::Renderers.add :pdf do |pdf_options, _context_options|
  pdf = Prawn::Document.new(pdf_options)
  PrawnHtml.append_html(pdf, render_to_string(formats: [:html], layout: false))
  send_data(pdf.render, type: Mime[:pdf])
end
