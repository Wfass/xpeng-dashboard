.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeExceptionHandler;


# static fields
.field private static LOAD_SUCCESS:Z

.field private static nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;


# instance fields
.field private final MOTU_PATH:Ljava/lang/String;

.field private final TOMBSTONE_PATH:Ljava/lang/String;

.field private crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

.field private crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final motuPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->LOAD_SUCCESS:Z

    .line 40
    :try_start_0
    const-string v0, "Motu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->LOAD_SUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "load motu library error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "motu"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->MOTU_PATH:Ljava/lang/String;

    .line 32
    const-string v0, "tombstone"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->TOMBSTONE_PATH:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    .line 72
    const-string v0, "tombstone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 73
    const-string v0, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "motu"

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->motuPath:Ljava/lang/String;

    .line 74
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->motuPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    .line 68
    :cond_0
    sget-object p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 64
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static native regist(Ljava/lang/String;ZIJLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native resetSigHandler()Ljava/lang/String;
.end method

.method public static native unregist()Ljava/lang/String;
.end method


# virtual methods
.method public getNativeExceptionHandler()Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeExceptionHandler;
    .locals 1

    .line 56
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    return-object v0
.end method

.method public onNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p10

    .line 151
    if-eqz v1, :cond_1

    .line 152
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    if-eqz v2, :cond_0

    .line 153
    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    move-object v2, p9

    move-object/from16 v3, p12

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    const-string v0, "native: crash manager is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->unregist()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :goto_1
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_2
    const-string v1, "unregist native crash err,UnsatisfiedLinkError:"

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 165
    :catch_1
    move-exception v0

    .line 166
    const-string v1, "unregist native crash err"

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 172
    :goto_2
    goto :goto_4

    .line 170
    :catch_2
    move-exception v0

    goto :goto_3

    .line 158
    :cond_1
    const-string v0, "native crash stack or path is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    return-void

    .line 170
    :goto_3
    nop

    .line 171
    const-string v1, "onNativeException err"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :goto_4
    return-void
.end method

.method public onNativeExceptionStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 123
    const-string v0, "onNativeExceptionStart call back."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_1

    .line 126
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->setCrashReporterState(I)V

    .line 127
    const-string v0, "stuck handler is closed"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    invoke-virtual {v0, p2, p1, p3}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    const-string p1, "native: crash manager is null!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 140
    :goto_0
    goto :goto_2

    .line 138
    :catch_0
    move-exception p1

    goto :goto_1

    .line 135
    :cond_1
    const-string p1, "native crash stack or path is null!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 138
    :goto_1
    nop

    .line 139
    const-string p2, "onNativeException err"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_2
    return-void
.end method

.method public regist(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;ZLcom/alibaba/sdk/android/man/crashreporter/c;)Z
    .locals 7

    .line 95
    sget-boolean p3, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->LOAD_SUCCESS:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 96
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    .line 98
    iget-object p1, p4, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string p1, ""

    .line 104
    :cond_0
    move-object v6, p1

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->motuPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-wide v4, p4, Lcom/alibaba/sdk/android/man/crashreporter/c;->startupTime:J

    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->regist(Ljava/lang/String;ZIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 105
    const/4 p1, 0x1

    return p1

    .line 107
    :cond_1
    return v0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    const-string p2, "regist native crash err,UnsatisfiedLinkError:"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return v0

    .line 108
    :catch_1
    move-exception p1

    .line 109
    const-string p2, "regist native crash err"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return v0

    .line 116
    :cond_2
    return v0
.end method

.method public removeNativeCrashHandler()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->resetSigHandler()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Native crash handler is removed success"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    const-string v0, "Native crash handler is removed failed"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
