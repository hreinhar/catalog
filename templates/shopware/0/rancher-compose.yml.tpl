.catalog:
  name: "Shopware"
  version: "5.3.2"
  description: |
    "OpenSource Shop System"
  questions:
  - variable: "MYSQL_ROOT_PASSWORD"
    label: "Password for Database Administrator"
    default:
    required: true
    type: "password"
  - variable: "DATA_WWW"
    label: "Directory where html-Files will reside"
    description: "Directory where html-Files will reside"
    default: "Shopware_www"
    required: true
    type: "string"
  - variable: "DATA_DB"
    label: "Directory where DB-Files will reside"
    description: "Directory where DB-Files will reside"
    default: "Shopware_DB"
    required: true
    type: "string"
  - variable: "VOLUME_DRIVER"
    label: "The volume driver to use for data directory"
    description: "The volume driver to use. Options: local or rancher"
    default: "rancher-nfs"
    required: true
    type: "enum"
    options:
      - "local"
      - "rancher-nfs"
  - variable: mysql_database
    description: "Optional, allows you to specify the name of a database to be created on image startup."
    label: "MySQL Database"
    default: "shopware"
    required: false
    type: "string"
  - variable: mysql_user
    description: "Creates an additional MySQL (super)user. MySQL Password must also be set."
    label: "MySQL User"
    default: "shopware"
    required: false
    type: "string"
  - variable: mysql_password
    description: "A password for the additional MySQL (super)user. MySQL User must also be set."
    label: "MySQL Password"
    required: false
    type: password
