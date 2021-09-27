#!/usr/bin/python
#
# If you want to write a real module, check these out. 
# Developer Guide
# https://docs.ansible.com/ansible/latest/dev_guide/index.html
# Developing Ansible modules
# https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_general.html
#

#----------------------------------------------------------
# text to read 

# These two lines are described here.
# Forwards Compatibility Boilerplate
# https://docs.ansible.com/ansible/2.3/dev_guide/developing_python3.html#forwards-compatibility-boilerplate
from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

DOCUMENTATION = r'''
---
module: my_echo
description: Display a message on STDOUT. To see the message, register the return values and display them.
'''

EXAMPLES = r'''
- name: echo something on STDOUT. 
  my_echo: 
    say_this: Hello world!
'''

RETURN = r'''
playbook_said:
    description: The output message from the module
    type: str
    returned: always
    sample: 'Well hello there'
'''

#----------------------------------------------------------
# code to run

# for more information on the Python module "AnsibleModule", see
# https://docs.ansible.com/ansible/latest/reference_appendices/module_utils.html#ansiblemodule
#
from ansible.module_utils.basic import AnsibleModule

def main():

  # for more information on "argument_spec", see
  # https://docs.ansible.com/ansible/latest/dev_guide/developing_program_flow_modules.html#argument-spec
  #
  argument_spec = {
    'say_this': {
      'type': 'str',
      'required': True,
    },
  }
  module = AnsibleModule(argument_spec)
  response = {"playbook_said": module.params['say_this']}
  module.exit_json(changed=False, my_return=response)

# This is a python-ism. 
# It's a safety catch to avoid accidentally triggering this code.
#
if __name__ == '__main__':
    main()

#----------------------------------------------------------
