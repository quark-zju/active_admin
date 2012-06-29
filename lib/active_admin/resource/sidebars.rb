require 'active_admin/helpers/optional_display'

module ActiveAdmin

  class Resource
    module Sidebars

      def sidebar_sections
        @sidebar_sections ||= []
      end

      def clear_sidebar_sections!
        @sidebar_sections = []
      end

      def sidebar_sections_for(action, render_context = nil)
        sidebar_sections.select{|section| section.display_on?(action, render_context) }
      end

      def sidebar_sections?
        !!@sidebar_sections && @sidebar_sections.any?
      end

    end
  end

end
