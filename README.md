CycleCloud-SCHISM
========

This project sets up an auto-scaling SCHISM cluster.


Pre-Requisites
--------------

This project requires the following:

  1. CycleCloud CycleCloud CLI must be installed, configured,  and running.

     a. If this is not the case, see the CycleCloud QuickStart Guide for
        assistance.

  2. You must have access to log in to CycleCloud.

  3. You must have access to upload data and launch instances in your chosen
     Azure subscription

  4. You must have access to a configured CycleCloud "Locker" for Project Storage
     (Cluster-Init and Chef).

  5. You need to download tar files and put and untar them in the `blobs/`directory.

  6. To use the `cyclecloud project upload <locker>`command, you must
     have a Pogo configuration file set up with write-access to your locker.

     a. You may use your preferred tool to interact with your storage "Locker"
        instead.


Usage
=====

A. Deploying the Project
--------------------------

The first step is to configure the project for use with your storage locker:

  1. Open a terminal session with the CycleCloud CLI enabled.

  2. Switch to the CycleCloud-SCHISM project directory.

  3. Upload the project (including any local changes) to your target locker, run the
`cyclecloud project upload` command from the project directory.  The expected output looks like
this:::

    $ cyclecloud project upload
    Sync completed!

*IMPORTANT*

For the upload to succeed, you must have a valid Pogo configuration for your target Locker.


B. Importing the Cluster Template
---------------------------------

To import the cluster:

  1. Open a terminal session with the CycleCloud CLI enabled.

  2. Switch to the CycleCloud-SCHISM directory.

  3. Run ``cyclecloud import_template SCISM -f templates/schism.txt -c schism``.  The
     expected output looks like this:
```
       $ cyclecloud import_template SCHISM -f templates/schism.txt -c schism
       Importing template SCHISM....
       ----------------------
       SCHISM : *template*
       ----------------------
       Keypair: $keypair
       Cluster nodes:
           master: off
       Total nodes: 1
```
     Add ``--force`` option when repeating the import process to overwrite a template already imported.

# License

Copyright (C) 2019 State of California, Department of Water Resources.
Copyright (c) Microsoft Corporation. All rights reserved.

The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

--------------------------------------------------------
This project is based on a Microsoft CycleCloud project template.

