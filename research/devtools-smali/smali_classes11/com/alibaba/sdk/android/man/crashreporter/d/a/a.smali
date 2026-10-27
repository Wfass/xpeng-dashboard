.class public Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3

    .line 117
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 118
    const-string p0, "load file error:input stream is null!"

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 119
    return-object v0

    .line 122
    :cond_0
    nop

    .line 124
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz p0, :cond_1

    .line 129
    nop

    .line 134
    nop

    .line 135
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    return-object p0

    .line 134
    :cond_1
    goto :goto_1

    .line 131
    :catch_0
    move-exception p0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    .line 131
    :catch_1
    move-exception p0

    move-object v1, v0

    .line 132
    :goto_0
    :try_start_2
    const-string v2, "load reports error."

    invoke-static {v2, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    if-eqz v1, :cond_2

    .line 135
    :goto_1
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    .line 138
    :cond_2
    return-object v0

    .line 134
    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_3

    .line 135
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    :cond_3
    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/io/File;)V
    .locals 2

    .line 92
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 97
    :cond_0
    nop

    .line 98
    nop

    .line 100
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    nop

    .line 108
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/OutputStream;)V

    .line 110
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    .line 104
    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    .line 107
    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    .line 104
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 105
    :goto_0
    :try_start_3
    const-string p1, "store file error."

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/OutputStream;)V

    .line 110
    :cond_1
    if-eqz v1, :cond_2

    .line 111
    :goto_1
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/OutputStream;)V

    .line 114
    :cond_2
    return-void

    .line 107
    :catchall_2
    move-exception p0

    :goto_2
    if-eqz v0, :cond_3

    .line 108
    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/OutputStream;)V

    .line 110
    :cond_3
    if-eqz v1, :cond_4

    .line 111
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/OutputStream;)V

    :cond_4
    throw p0

    .line 93
    :cond_5
    :goto_3
    const-string p0, "store file error:object or file is null!"

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 25
    :try_start_0
    const-string p0, "Trying to get crash reports but MotuCrashReporter is not initialized."

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 26
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 53
    :catch_0
    move-exception p0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    const-string p0, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->g(Ljava/lang/String;)V

    .line 32
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 35
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for error files in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$1;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 52
    if-nez p0, :cond_2

    new-array p0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    .line 53
    :goto_0
    nop

    .line 54
    const-string p1, "find file error."

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 63
    :try_start_0
    const-string p0, "Trying to get crash reports but MotuCrashReporter is not initialized."

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 64
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 84
    :catch_0
    move-exception p0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    nop

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for error files in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$2;

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$2;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 83
    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    .line 84
    :goto_0
    nop

    .line 85
    const-string p1, "find file error."

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 p0, 0x0

    return-object p0
.end method
