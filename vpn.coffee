#command: "/usr/local/bin/ip a |grep utun2 || echo 'none'"
command: "sh ./chunkbar.widget/scripts/vpn.sh"

refreshFrequency: 20000 # ms

render: (output) ->
  """
  <link rel="stylesheet" type="text/css" href="./chunkbar.widget/colors.css" /> 
  <div class="stats"></div>
  """

style: """
  -webkit-font-smoothing: antialiased
  font: Fontawesome5Free
  right: 360px 
  bottom: 13px
  height: 13
  .vpn
    font: 14px FontAwesome5FreeSolid
    top: 3px
    position: relative
"""

icon: (vpn) ->
  return if vpn == "none\n"
    "<span class='vpn'></span><span class='white'>"
  else
    "<span class='vpn'></span><span class='white'>"

update: (output, domEl) ->

  values = output.split('@')
  vpn = values[0]
  ip = values[1]

  htmlString = @icon(vpn) + ip
  $(domEl).find('.stats').html(htmlString)
