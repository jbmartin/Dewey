#  Filename: SidebarView.coffee
define [
        "backbone"
        'inspiritas'
        'text!templates/overview.html'
      ],
      (
        Backbone
        Inspiritas
        OverviewTemplate
      ) ->
        class SideBarView extends Backbone.View

          el: $('#content')

          pushstateClick: (event) ->
            event.preventDefault()

          events:
            'click a': 'pushstateClick'

          initialize: ->
            @render()

          render: ->
            # Highlight sidebar selections on click
            $('li').on 'click', ->
              $('li').removeClass 'selected'
              $(@).addClass 'selected'

            @options.config.fetch async: false

            # Load and add config content pages
            overview = _.template(OverviewTemplate)

            # Have options respond to clicks
            $('#overview').on 'click', ->
              $('#content').html(overview)
              loadCharts()
