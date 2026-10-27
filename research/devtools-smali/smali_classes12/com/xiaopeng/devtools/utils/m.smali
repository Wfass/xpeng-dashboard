.class public Lcom/xiaopeng/devtools/utils/m;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# direct methods
.method public static Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 87
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessInfo processName = ps -elf | grep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/bin/sh"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ps -elf | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 92
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessInfo result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    move-object v0, v3

    goto :goto_0

    .line 100
    :cond_1
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 103
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    goto :goto_3

    .line 100
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 100
    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 97
    :catch_1
    move-exception v3

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 100
    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    .line 97
    :catch_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 98
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 100
    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 103
    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    nop

    .line 105
    move-object v0, v1

    :goto_3
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessInfo processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", param = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", res = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    return-object v0

    .line 100
    :catchall_3
    move-exception p0

    :goto_4
    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 103
    :cond_4
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 132
    nop

    .line 133
    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/m;->Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killProcess processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", param = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",  mProcessInfo = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    if-eqz v0, :cond_1

    array-length p0, v0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    .line 137
    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill -9 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 144
    :catchall_0
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_3

    .line 141
    :catch_0
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_0

    .line 139
    :catch_1
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_1

    .line 144
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 141
    :catch_2
    move-exception p1

    .line 142
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 144
    if-eqz p0, :cond_1

    goto :goto_2

    .line 139
    :catch_3
    move-exception p1

    .line 140
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    if-eqz p0, :cond_1

    .line 145
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 144
    :goto_3
    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_0
    throw p1

    .line 149
    :cond_1
    :goto_4
    return-void
.end method

.method private static synthetic a(Ljava/lang/Process;)V
    .locals 2

    .line 354
    const-string v0, "ProcessUtil"

    const-string v1, "sendPing timeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 356
    return-void
.end method

.method public static aZ(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5

    .line 188
    nop

    .line 191
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/bin/sh"

    aput-object v4, v2, v3

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :try_start_1
    const-string v0, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    goto :goto_1

    .line 195
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 196
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    :goto_1
    return-object v1
.end method

.method public static ba(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 220
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 221
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    nop

    .line 224
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 225
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLine(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 232
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 234
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 237
    :cond_1
    return-object p0

    .line 228
    :catch_0
    move-exception v3

    goto :goto_2

    .line 232
    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 228
    :catch_1
    move-exception v3

    move-object v2, v0

    goto :goto_2

    .line 232
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    .line 228
    :catch_2
    move-exception v3

    move-object v1, v0

    goto :goto_1

    .line 232
    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v0, p0

    move-object p0, v2

    goto :goto_3

    .line 228
    :catch_3
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    :goto_1
    move-object v2, v1

    .line 229
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 230
    nop

    .line 232
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 234
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 230
    :cond_2
    return-object v0

    .line 232
    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 234
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v0
.end method

.method private static bb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 316
    const-string v0, ""

    .line 318
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 319
    if-nez p0, :cond_0

    .line 320
    return-object v0

    .line 322
    :cond_0
    const/4 v1, 0x0

    .line 324
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :try_start_2
    const-string v0, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShellCmdResult result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    nop

    .line 333
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 337
    :goto_0
    nop

    .line 338
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 339
    goto :goto_6

    .line 327
    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    goto :goto_2

    .line 331
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 327
    :catch_2
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    :goto_2
    move-object v1, v5

    goto :goto_3

    .line 331
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 327
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 328
    :goto_3
    :try_start_4
    const-string v3, "ProcessUtil"

    const-string v4, "fail to getShellCmdResult"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 332
    if-eqz v1, :cond_1

    .line 333
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 335
    :catch_4
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 337
    :cond_1
    :goto_4
    nop

    .line 338
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 339
    nop

    .line 341
    move-object v1, v2

    :goto_6
    return-object v1

    .line 331
    :goto_7
    nop

    .line 332
    if-eqz v1, :cond_2

    .line 333
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 335
    :catch_5
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 337
    :cond_2
    :goto_8
    nop

    .line 338
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    throw v0
.end method

.method public static cF(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 60
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessInfo processName = ps -elf | grep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/bin/sh"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ps -elf | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 62
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 65
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessInfo result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    move-object v0, v3

    goto :goto_0

    .line 73
    :cond_1
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 76
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    goto :goto_3

    .line 73
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 70
    :catch_1
    move-exception v3

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 73
    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    .line 70
    :catch_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 71
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 73
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 76
    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    nop

    .line 78
    move-object v0, v1

    :goto_3
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessInfo processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", res = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-object v0

    .line 73
    :catchall_3
    move-exception p0

    :goto_4
    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 76
    :cond_4
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static cG(Ljava/lang/String;)V
    .locals 6

    .line 111
    nop

    .line 112
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/m;->cF(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killProcess processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",  mProcessInfo = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    if-eqz v0, :cond_1

    array-length p0, v0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    .line 116
    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kill -9 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 123
    :catchall_0
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_3

    .line 120
    :catch_0
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_0

    .line 118
    :catch_1
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    .line 123
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 120
    :catch_2
    move-exception v0

    .line 121
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 123
    if-eqz p0, :cond_1

    goto :goto_2

    .line 118
    :catch_3
    move-exception v0

    .line 119
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    if-eqz p0, :cond_1

    .line 124
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 123
    :goto_3
    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_0
    throw v0

    .line 128
    :cond_1
    :goto_4
    return-void
.end method

.method public static cH(Ljava/lang/String;)Z
    .locals 9

    .line 345
    nop

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping -c 4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 349
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 350
    return v2

    .line 352
    :cond_0
    const/4 v3, 0x0

    .line 353
    new-instance v4, Lcom/xiaopeng/devtools/utils/-$$Lambda$m$c13e7rLZ2I-_ls6T1zTr-Rdi1gQ;

    invoke-direct {v4, v1}, Lcom/xiaopeng/devtools/utils/-$$Lambda$m$c13e7rLZ2I-_ls6T1zTr-Rdi1gQ;-><init>(Ljava/lang/Process;)V

    const-wide/16 v5, 0x1388

    invoke-static {v2, v4, v5, v6}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 358
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    nop

    .line 362
    :try_start_1
    const-string v3, "ProcessUtil"

    const-string v5, "sendPing readline"

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    move v3, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 364
    const-string v6, "ProcessUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPing line"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const-string v3, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPing resultBuf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ttl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TTL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 378
    :cond_3
    :goto_1
    const/4 p0, 0x1

    move v2, p0

    .line 379
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 381
    :catch_0
    move-exception p0

    goto :goto_4

    .line 377
    :catchall_0
    move-exception p0

    goto :goto_7

    .line 373
    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_3

    .line 377
    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_7

    .line 373
    :catch_2
    move-exception v0

    .line 374
    :goto_3
    :try_start_3
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to ping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    if-eqz v3, :cond_5

    .line 379
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 381
    :catch_3
    move-exception p0

    .line 382
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 383
    :cond_5
    :goto_5
    nop

    .line 384
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 385
    const-string p0, "ping"

    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/m;->cG(Ljava/lang/String;)V

    .line 386
    nop

    .line 388
    return v2

    .line 377
    :goto_7
    nop

    .line 378
    if-eqz v4, :cond_6

    .line 379
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 381
    :catch_4
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 383
    :cond_6
    :goto_8
    nop

    .line 384
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 385
    const-string v0, "ping"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->cG(Ljava/lang/String;)V

    throw p0
.end method

.method public static eE()Ljava/lang/String;
    .locals 1

    .line 304
    const-string v0, "phytool get link_stat"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static eF()Ljava/lang/String;
    .locals 1

    .line 312
    const-string v0, "phytool get sqi"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/xiaopeng/devtools/utils/-$$Lambda$m$ztq6ABE4BhxWl7Xazi9q5cAHMyg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/utils/-$$Lambda$m$ztq6ABE4BhxWl7Xazi9q5cAHMyg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method private static synthetic g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 393
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 394
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public static synthetic lambda$c13e7rLZ2I-_ls6T1zTr-Rdi1gQ(Ljava/lang/Process;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/m;->a(Ljava/lang/Process;)V

    return-void
.end method

.method public static synthetic lambda$ztq6ABE4BhxWl7Xazi9q5cAHMyg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static ld()Ljava/lang/String;
    .locals 1

    .line 308
    const-string v0, "phytool get master"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
