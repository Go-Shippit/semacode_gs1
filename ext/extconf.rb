require 'mkmf'
dir_config 'semacode_gs1_native'
if CONFIG['CC'] =~ /gcc/
  $CFLAGS << ' ' + %w[
    -Wno-sign-compare -Wno-pointer-sign
    -Wno-incompatible-pointer-types-discards-qualifiers
    -Wno-shorten-64-to-32 -Wno-missing-braces
    -Wno-format-extra-args -Wno-char-subscripts
  ].join(' ').strip
end
create_makefile 'semacode_gs1_native'
