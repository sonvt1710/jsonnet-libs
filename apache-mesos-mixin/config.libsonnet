{
  _config+:: {
    dashboardTags: ['apache-mesos-mixin'],
    dashboardPeriod: 'now-1h',
    dashboardTimezone: 'default',
    dashboardRefresh: '1m',

    // alerts thresholds
    alertsWarningMemoryUsage: 90,
    alertsCriticalDiskUsage: 90,
    alertsWarningUnreachableTask: 3,
    enableLokiLogs: true,
    enableMultiCluster: false,
    mesosSelector: if self.enableMultiCluster then 'job=~"$job", cluster=~"$cluster"' else 'job=~"$job"',
    multiclusterSelector: 'job=~"$job"',
  },
}
