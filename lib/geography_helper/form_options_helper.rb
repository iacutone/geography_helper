module ActionView
  module Helpers
    module FormOptionsHelper

      def state_options_for_select(selected=nil)
        geography = GeographyHelper::States.new
        state_options = geography.states
        province_options = geography.provinces
        state_and_province_options = {'United States' => state_options['United States'].invert}.merge({'Canada' => province_options['Canada'].invert})

        grouped_options_for_select(state_and_province_options, selected)
      end

      def country_options_for_select
        geography = GeographyHelper::Countries.new
        geography.countries.invert
      end
    end
  end
end
