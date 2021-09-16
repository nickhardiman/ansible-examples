#!/usr/bin/python
#

from ansible.module_utils.basic import AnsibleModule

def main():

  module = AnsibleModule(argument_spec={})
  response = {"module_says": "Hello, world."}
  module.exit_json(changed=False, my_return=response)

if __name__ == '__main__':
    main()

