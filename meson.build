project('webview-vala', ['c', 'vala'], version: '1.0.0', meson_version: '>=1.0')

library_executable = [
  dependency('glib-2.0', version: '>= 2.64', static: false),
  dependency('gtk4', version: '>= 4.12.0', static: false),
  dependency('webview', version: '>= 0.12.0', static: false),
]

sources_executable = [
  'browser.vala',
  'main.vala',
]

add_project_arguments(['--vapidir', join_paths(meson.global_source_root(), 'vapi')], language: 'vala')

# platform specific dependenies
host_os = host_machine.system()
if host_os == 'mingw' or host_os == 'cygwin' or host_os == 'windows'
  add_project_arguments(['--define', 'WINDOWS'], language: 'vala')
  add_project_arguments(['--define', 'WINDOWS'], language: 'c')

  sources_executable += join_paths(meson.global_source_root(), 'vapi', 'windows.vapi')
  library_executable += dependency('gio-windows-2.0', version: '>= 2.60.0', static: false)
elif host_os == 'linux'
  add_project_arguments(['--define', 'LINUX'], language: 'vala')
  add_project_arguments(['--define', 'LINUX'], language: 'c')
elif host_os == 'darwin'
  add_project_arguments(['--define', 'MACOS'], language: 'vala')
  add_project_arguments('-DMACOS', language: 'c')
elif host_os == 'android'
  add_project_arguments(['--define', 'ANDROID'], language: 'vala')
  add_project_arguments('-DANDROID', language: 'c')
endif



executable(meson.project_name(),
  sources_executable,
  dependencies: library_executable,
  install: true,
  win_subsystem: 'windows'
)
