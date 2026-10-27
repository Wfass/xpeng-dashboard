.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Integer;

.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

.field private final crashing:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Integer;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    .line 31
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    .line 33
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 35
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 75
    nop

    .line 76
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 77
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "close StringWriter failed."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    nop

    .line 92
    :goto_0
    return-object p1

    .line 83
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 86
    :try_start_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string v1, "close StringWriter failed."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :goto_1
    throw p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 107
    nop

    .line 108
    nop

    .line 110
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, ""

    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 72
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    const-string v0, "uncaughtException start."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->setCrashReporterState(I)V

    .line 47
    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 50
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->crashReportManager:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    invoke-virtual {v2, p2, p1, v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "java: crash manager is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "uncaughtException exception or backtrace is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    const-string v0, "uncaughtException end."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_1
    const-string v1, "uncaughtException error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    const-string v0, "uncaughtException end."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 61
    :goto_2
    const-string v1, "uncaughtException end."

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    throw v0

    .line 68
    :cond_3
    :goto_3
    return-void
.end method
