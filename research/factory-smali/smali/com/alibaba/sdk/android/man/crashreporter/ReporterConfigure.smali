.class public Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enabeANRTimeoutInterval:I

.field public enableANRMainThreadOnly:Z

.field public enableAbortCount:Z

.field public enableActivityMonitor:Z

.field public enableCatchANRException:Z

.field public enableCatchNativeException:Z

.field public enableCatchUncaughtException:Z

.field public enableDebug:Z

.field public enableDeduplication:Z

.field public enableDumpAllThread:Z

.field public enableDumpAppLog:Z

.field public enableDumpEventsLog:Z

.field public enableDumpRadioLog:Z

.field public enableDumpSysLog:Z

.field public enableMaxThreadNumber:I

.field public enableMaxThreadStackTraceNumber:I

.field public enableStartCount:Z

.field public enableSysLogcatLinkMaxCount:I

.field public enableSysLogcatMaxCount:I

.field public sendOnLaunchDelay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchUncaughtException:Z

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchNativeException:Z

    .line 22
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableStartCount:Z

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->sendOnLaunchDelay:I

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableActivityMonitor:Z

    .line 38
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpSysLog:Z

    .line 42
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpEventsLog:Z

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpRadioLog:Z

    .line 50
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpAppLog:Z

    .line 55
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpAllThread:Z

    .line 60
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDebug:Z

    .line 65
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enabeANRTimeoutInterval:I

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableANRMainThreadOnly:Z

    .line 75
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDeduplication:Z

    .line 80
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableAbortCount:Z

    .line 85
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadNumber:I

    .line 91
    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadStackTraceNumber:I

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatMaxCount:I

    .line 103
    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatLinkMaxCount:I

    .line 107
    return-void
.end method


# virtual methods
.method public setEnableANRMainThreadOnly(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableANRMainThreadOnly:Z

    .line 139
    return-void
.end method

.method public setEnableCatchANRException(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    .line 111
    return-void
.end method

.method public setEnableDebug(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDebug:Z

    .line 135
    return-void
.end method

.method public setEnableDumpAllThread(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpAllThread:Z

    .line 131
    return-void
.end method

.method public setEnableDumpAppLog(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpAppLog:Z

    .line 127
    return-void
.end method

.method public setEnableDumpEventsLog(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpEventsLog:Z

    .line 119
    return-void
.end method

.method public setEnableDumpRadioLog(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpRadioLog:Z

    .line 123
    return-void
.end method

.method public setEnableDumpSysLog(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpSysLog:Z

    .line 115
    return-void
.end method
