#!/bin/bash

# A naplók listája és a problémákról értesítendő személyek
logEmails=( "djidji@freemail.hu" "gnemcsics@gmail.com" )
# List of logs and who should be notified of issues
logPaths=("api.log")

# Look for signs of trouble in each log
for i in ${!logPaths[@]};
do
  log=${logPaths[$i]}
  stakeholder=${logEmails[$i]}
  numErrors=$( tail -n 100 "$log" | grep "ERROR" | wc -l )

  # Warn stakeholders if recently saw > 5 errors
  if [[ "$numErrors" -gt 5 ]];
  then
    emailRecipient="$stakeholder"
    emailSubject="WARNING: ${log} showing unusual levels of errors"
    emailBody="${numErrors} errors found in log ${log}"
    echo "$emailBody" | mailx -s "$emailSubject" "$emailRecipient"
  fi
done