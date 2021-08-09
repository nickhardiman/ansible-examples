#! /bin/bash

if [ "$1" == "--list" ]; then
cat<<EOF
{
    "_meta": {
        "hostvars": {
            "host1": {
                "ansible_connection": "local",
                "ansible_python_interpreter": "auto_silent"
            },
            "host2": {
                "ansible_connection": "local",
                "ansible_python_interpreter": "auto_silent"
            },
            "host3": {
                "ansible_connection": "local",
                "ansible_python_interpreter": "auto_silent"
            },
            "host4": {
                "ansible_connection": "local",
                "ansible_python_interpreter": "auto_silent"
            }
        }
    },
    "all": {
        "children": [
            "ungrouped"
        ]
    },
    "ungrouped": {
        "hosts": [
            "host1",
            "host2",
            "host3",
            "host4"
        ]
    }
}
EOF
elif [ "$1" == "--host" ]; then
cat<<EOF
{
    "_meta": {
        "hostvars": {
                "ansible_connection": "local",
                "ansible_python_interpreter": "auto_silent"
        }
    }
}
EOF
else
cat<<EOF
{
}
EOF
fi

