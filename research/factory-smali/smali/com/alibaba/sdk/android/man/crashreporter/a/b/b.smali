.class public Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    if-eqz p1, :cond_c

    .line 26
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    nop

    .line 28
    nop

    .line 29
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v2

    .line 30
    const/16 v3, 0xf

    if-eqz v2, :cond_0

    .line 31
    iget v3, v2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadNumber:I

    .line 32
    iget v2, v2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableMaxThreadStackTraceNumber:I

    .line 33
    if-nez v3, :cond_1

    .line 34
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 38
    :cond_0
    move v2, v3

    .line 39
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 40
    if-eqz v6, :cond_9

    .line 41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 42
    if-eqz v7, :cond_9

    .line 43
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 44
    if-eqz v8, :cond_2

    const-string v9, "ANR-WatchDog"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Thread;->getPriority()I

    move-result v9

    .line 48
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    .line 49
    const-string v12, ""

    .line 50
    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v13

    .line 51
    if-eqz v13, :cond_3

    .line 52
    invoke-virtual {v13}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v12

    .line 54
    :cond_3
    const-string v13, ""

    .line 55
    invoke-virtual {v7}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v14

    .line 56
    if-eqz v14, :cond_4

    .line 57
    invoke-virtual {v14}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v13

    .line 58
    const-string v14, "system"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 59
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 63
    const-string v15, ""

    .line 64
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 65
    if-eqz v7, :cond_5

    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 68
    :cond_5
    const-string v7, "name:%s prio:%d tid:%d \n|state:%s \n|group:%s \n|class:%s \n|classLoader:%s\n"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v4, v16

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const/4 v8, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v8

    const/4 v8, 0x3

    aput-object v12, v4, v8

    const/4 v8, 0x4

    aput-object v13, v4, v8

    const/4 v8, 0x5

    aput-object v14, v4, v8

    const/4 v8, 0x6

    aput-object v15, v4, v8

    .line 68
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 72
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 73
    const-string v6, "|stackTrace:\n "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    nop

    .line 75
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v6, :cond_8

    aget-object v10, v4, v7

    .line 76
    if-eqz v10, :cond_6

    .line 77
    const-string v11, "%s\n"

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 80
    :cond_6
    const/4 v13, 0x0

    :goto_3
    add-int/2addr v8, v9

    .line 81
    if-lt v8, v2, :cond_7

    .line 82
    goto :goto_4

    .line 75
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    :cond_8
    const/4 v13, 0x0

    :goto_4
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 90
    :cond_9
    const/4 v13, 0x0

    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 91
    if-lt v5, v3, :cond_a

    .line 92
    goto :goto_6

    .line 94
    :cond_a
    goto/16 :goto_1

    .line 95
    :cond_b
    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 100
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    const-string v1, "serialization failed."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 100
    :goto_7
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_c
    :goto_8
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    nop

    .line 102
    const-string v0, ""

    return-object v0
.end method
