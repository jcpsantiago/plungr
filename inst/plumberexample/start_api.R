# This file is used to start the API after e.g. checking if the correct
# environmental variables are set, log startup messages, connect to databases, etc
# You can use run_api() directly without this script though.

message("Starting plungerexample ", packageVersion("plungrexample"))
plungrexample::run_api()
