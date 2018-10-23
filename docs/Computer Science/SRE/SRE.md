# Site Reliability and Google Cloud stuff to learn

-   [ ] know how to navigate to and read Beehive dashboard charts in Stackdriver
-   [ ] how to get to and interpret structured logs in Stackdriver (including events types)
-   [ ] how to read Stackdriver tracing charts
-   [ ] know how to rollback and roll forward release changes
-   [ ] know how to read and search through Stackdriver logs based on examples from past scenarios
-   [ ] know how to restart Kubernetes nodes if it doesn't automatically restart and monitor it as it comes back online.
-   [ ] know if Kubernetes nodes are not auto-scaling, or scaling too quickly

## Navigating Stack-driver Logging

How:

-   To get to the Logging page, click on the `Logs` section in the sidebar burger menu  
-   Can filter between stuff

![](https://storage.googleapis.com/gweb-cloudblog-publish/original_images/gcp-stackdriver-logml0u.GIF)

Why:

-   Stack-driver provides structured logging. All log entries are in **json** format so that it is easy to search
