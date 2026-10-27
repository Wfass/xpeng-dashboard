.class public final Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;


# instance fields
.field private configure:Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

.field private crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

.field private crashReporterState:I

.field private environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

.field private isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field myExtListenerList:Ljava/util/List;

.field mySenderListenerList:Ljava/util/List;

.field private startupTime:J

.field private strExtraInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->startupTime:J

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReporterState:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->myExtListenerList:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->mySenderListenerList:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->strExtraInfo:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;
    .locals 1

    .line 52
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->initMotuCrashReporter()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    .line 55
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    return-object v0
.end method

.method private static declared-synchronized initMotuCrashReporter()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    .line 49
    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->instance:Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 64
    if-eqz p6, :cond_0

    .line 65
    iput-object p6, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->configure:Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p6, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    invoke-direct {p6}, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;-><init>()V

    iput-object p6, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->configure:Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p6

    iget-object p6, p6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 72
    if-eqz p6, :cond_1

    const-string v0, "com.taobao.taobao"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 74
    if-nez p1, :cond_2

    .line 75
    const-string p1, "enable failure. because context equal to null!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 76
    return v1

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_2

    goto :goto_4

    .line 86
    :cond_2
    const-string p6, "start enable. context:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p6, "start enable. appKey: "

    if-nez p2, :cond_3

    const-string v0, "use taobao detault"

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    invoke-static {p6, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p6, "start enable. appVersion: "

    if-nez p3, :cond_4

    const-string v0, "use taobao default"

    goto :goto_2

    :cond_4
    move-object v0, p3

    :goto_2
    invoke-static {p6, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p6, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-nez p6, :cond_5

    .line 91
    new-instance p6, Lcom/alibaba/sdk/android/man/crashreporter/c;

    invoke-direct {p6}, Lcom/alibaba/sdk/android/man/crashreporter/c;-><init>()V

    iput-object p6, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 93
    :cond_5
    iget-object p6, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p2, p6, Lcom/alibaba/sdk/android/man/crashreporter/c;->appKey:Ljava/lang/String;

    .line 94
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p3, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    .line 95
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p4, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->channel:Ljava/lang/String;

    .line 96
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p5, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    .line 97
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iget-wide p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->startupTime:J

    iput-wide p3, p2, Lcom/alibaba/sdk/android/man/crashreporter/c;->startupTime:J

    .line 99
    new-instance p2, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

    .line 100
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->configure:Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    iget-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    invoke-interface {p2, p1, p3, p4}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/c;)Z

    move-result p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    const-string p1, "enable succ!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 104
    :cond_6
    const-string p1, "enable failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 107
    :goto_3
    const/4 p1, 0x1

    return p1

    .line 81
    :cond_7
    :goto_4
    const-string p1, "enable failure. because context or appKey or appVersion equal to null!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return v1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    const-string p2, "enable err"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return v1

    .line 114
    :cond_8
    return v1
.end method

.method public getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->configure:Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    return-object v0
.end method

.method public getCrashReporterState()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReporterState:I

    return v0
.end method

.method public getMyListenerList()Ljava/util/List;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->myExtListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getMySenderListenerList()Ljava/util/List;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->mySenderListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getStrExtraInfo()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->strExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 177
    :cond_0
    if-eqz p1, :cond_1

    .line 178
    const-string v0, "set appVersion succ!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    .line 181
    :cond_1
    return-void
.end method

.method public setCrashCaughtListener(Lcom/alibaba/sdk/android/man/crashreporter/IUTCrashCaughtListener;)V
    .locals 2

    .line 136
    const-string v0, "setCrashCaughtListener"

    if-nez p1, :cond_0

    const-string v1, "ext listener is null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->myExtListenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->myExtListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-void
.end method

.method public setCrashReporterState(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReporterState:I

    .line 194
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->strExtraInfo:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSenderListener(Lcom/alibaba/sdk/android/man/crashreporter/a;)V
    .locals 2

    .line 147
    const-string v0, "setSenderListener"

    if-nez p1, :cond_0

    const-string v1, "sender listener is null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->mySenderListenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->mySenderListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    return-void
.end method

.method public setTTid(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 187
    const-string v0, "set ttid succ!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->channel:Ljava/lang/String;

    .line 190
    :cond_1
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    const-string v0, "set user nick succ!"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->environment:Lcom/alibaba/sdk/android/man/crashreporter/c;

    iput-object p1, v0, Lcom/alibaba/sdk/android/man/crashreporter/c;->userNick:Ljava/lang/String;

    .line 172
    :cond_1
    return-void
.end method

.method public turnoffCrashReporter()Z
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/b;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b;->c()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    return v1

    .line 128
    :cond_1
    return v1
.end method
