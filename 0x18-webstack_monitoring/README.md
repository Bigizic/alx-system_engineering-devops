# Webstack monitoring
* Monitoring:
In the age of the data-ism, monitoring how our software systems are doing is an important thing.

Web stack monitoring can be broken down into 2 categories:

* ``Application monitoring``: getting data about your running software and making sure it is behaving as expected

* ``Server monitoring``: getting data about your virtual or physical server and making sure they are not overloaded (could be CPU, memory, disk or network overload)

# Tasks

- sign up for a free Datadog account. When signing up, you’ll have the option of selecting statistics from your current stack that Datadog can monitor for you. Once you have an account set up, follow the instructions given on the website to install the Datadog agent.

- Among the litany of data your monitoring service can report to you are system metrics. You can use these metrics to determine statistics such as reads/writes per second, which can help your company determine if/how they should scale. Set up some monitors within the Datadog dashboard to monitor and alert you of a few. You can read about the various system metrics that you can monitor here: System Check.

## 2-setup_datadog
Now create a dashboard with different metrics displayed in order to get a few different visualizations.

* Create a new dashboard
* Add at least 4 widgets to your dashboard. They can be of any type and monitor whatever you’d like
* Create the answer file 2-setup_datadog which has the dashboard_id on the first line. Note: in order to get the id of your dashboard, you may need to use Datadog’s API
