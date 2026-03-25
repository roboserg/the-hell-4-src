@if exist personal.props goto NEXT
@copy tools\personal.props personal.props
:NEXT
@if exist thehell4.vcxproj.user goto END
@copy tools\thehell4.vcxproj.user thehell4.vcxproj.user
:END
