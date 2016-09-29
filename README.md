# Titan Framework: Core Installation Script

About
-----

Titan is a framework for instantiation of content management systems (CMS), allowing the creation of complex web applications. The **Titan Framework** proposal is to be a simple and complete development tool, allowing you to create robust applications quickly and easily.

Titan was developed and is maintained by the partnership between the [Software Engineering Laboratory (LEDES)](http://www.ledes.net) of the [Faculty of Computing (FACOM)](http://www.facom.ufms.br) of the [Federal University of Mato Grosso do Sul (UFMS)](http://www.ufms.br) and the [Laboratory for Precision Livestock, Environment and Software Engineering (PLEASE Lab)](http://please.cnpgc.embrapa.br) of the [Embrapa Beef Cattle](http://www.embrapa.br/gado-de-corte) of the [Brazilian Agricultural Research Corporation (Embrapa)](http://www.embrapa.br).

Using [Composer](https://getcomposer.org) this script works making a work copy, with most recent TAG, of Git repository of Titan Framework's [CORE](https://github.com/titan-framework/core). It's especially useful to install the core of Titan Framework on servers (with test, homologation or production environment).

Getting Start
-------------

To start using Titan Framework, is strongly recommended create a new instance using [titan-framework/instance](https://github.com/titan-framework/instance).

Otherwise, if you implemented a instance and wants to publish, please, you need [install Composer](https://getcomposer.org/download) and [install Git](https://git-scm.com/download/linux) on server, and do:

```bash
composer create-project titan-framework/install path/to/local/folder
```

More Information
----------------

After install CORE in server, your web application will not works yet. For this, you need install all requirements (like Apache with mod_rewrite, PHP and it's extensions, PostgreSQL, etc). See [Titan Cookbook](https://github.com/titan-framework/docs/raw/master/Cookbook.pdf) (*in portuguese*) to detailed explanation. You can also access our [mailing list](https://groups.google.com/forum/#!forum/titan-framework) to learn advanced features and answer questions.
