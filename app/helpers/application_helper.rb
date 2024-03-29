module ApplicationHelper
  #returns the full html title on a per-page basis
  def full_title(page_title = "")
    base_title = "Festivalblog"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def icon(icon, options = {})
    if File.file?("node_modules/bootstrap-icons/icons/#{icon}.svg")
      file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css 'svg'
      if options[:class].present?
        svg['class'] += " " + options[:class]
      end
      doc.to_html.html_safe
    end
  end
end
