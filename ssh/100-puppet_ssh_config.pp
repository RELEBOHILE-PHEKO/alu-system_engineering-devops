#!/usr/bin/env bash
 # Setting up my client configure a file that include stdlib

file_line { 'Turn off passwd auth':
  path  => '~/.ssh/config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '~/.ssh/config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}
