.class public Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:I = 0x2000

.field public static p:I = 0x0

.field public static q:I = 0x0

.field public static final r:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    .line 27
    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 98
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    iget v1, v0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatMaxCount:I

    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->q:I

    .line 101
    iget v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableSysLogcatLinkMaxCount:I

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    .line 102
    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->q:I

    if-eqz v0, :cond_0

    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    if-nez v0, :cond_1

    .line 103
    :cond_0
    const-string p0, ""

    return-object p0

    .line 107
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 108
    nop

    .line 110
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_2
    move-object p1, v1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const-string v2, "logcat"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    const-string v2, "-b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "-t"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->q:I

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "-v"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "time"

    aput-object v5, v2, v3

    .line 129
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 131
    const-string v3, "-t"

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 133
    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 134
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 136
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-ge v7, v8, :cond_4

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    const-string v3, "-d"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    move v5, v6

    goto :goto_1

    .line 142
    :cond_5
    nop

    .line 145
    :goto_1
    new-instance v3, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a/a;

    if-lez v5, :cond_6

    goto :goto_2

    :cond_6
    sget v5, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    :goto_2
    invoke-direct {v3, v5}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a/a;-><init>(I)V

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    nop

    .line 150
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 151
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v2, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    const-string v0, "collectLogCat Retrieving logcat output..."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    nop

    .line 157
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 158
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    if-ge v4, v0, :cond_d

    .line 159
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 166
    :cond_9
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->p:I

    if-ge v4, v0, :cond_d

    .line 167
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    :cond_a
    const-string v0, "W/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "E/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    :cond_b
    const-string v0, "com.alibaba.motu.crashreporter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 181
    :cond_d
    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    .line 178
    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    .line 181
    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_7

    .line 178
    :catch_1
    move-exception p0

    .line 179
    :goto_5
    :try_start_2
    const-string p1, "MotuLogProber could not retrieve data"

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    .line 182
    :goto_6
    nop

    .line 184
    invoke-virtual {v3}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :goto_7
    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    throw p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    nop

    .line 41
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 42
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-nez p0, :cond_0

    .line 49
    nop

    .line 58
    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    goto :goto_3

    .line 52
    :cond_0
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    .line 58
    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    throw p0

    .line 55
    :catch_1
    move-exception p0

    .line 58
    :goto_2
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    .line 59
    :goto_3
    nop

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .line 70
    nop

    .line 71
    nop

    .line 74
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 76
    nop

    .line 77
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 78
    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V

    .line 79
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "read /proc/cpuinfo error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dumpsys"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "meminfo"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
