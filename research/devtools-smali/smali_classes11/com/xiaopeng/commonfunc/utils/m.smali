.class public Lcom/xiaopeng/commonfunc/utils/m;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# direct methods
.method public static aZ(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5

    .line 200
    nop

    .line 203
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

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
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

    .line 209
    goto :goto_1

    .line 207
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 208
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    :goto_1
    return-object v1
.end method

.method public static ba(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8

    .line 228
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    nop

    .line 230
    nop

    .line 231
    nop

    .line 233
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 234
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    nop

    .line 237
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
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

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 245
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 250
    :cond_1
    return-object p0

    .line 241
    :catch_0
    move-exception v3

    goto :goto_2

    .line 245
    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 241
    :catch_1
    move-exception v3

    move-object v2, v0

    goto :goto_2

    .line 245
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    .line 241
    :catch_2
    move-exception v3

    move-object v1, v0

    goto :goto_1

    .line 245
    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v0, p0

    move-object p0, v2

    goto :goto_3

    .line 241
    :catch_3
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    :goto_1
    move-object v2, v1

    .line 242
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 243
    nop

    .line 245
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 243
    :cond_2
    return-object v0

    .line 245
    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/k;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v0
.end method

.method private static bb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 379
    const-string v0, ""

    .line 381
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 382
    if-nez p0, :cond_0

    .line 383
    return-object v0

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 387
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

    .line 388
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
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

    .line 395
    nop

    .line 396
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 400
    :goto_0
    nop

    .line 401
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 402
    goto :goto_6

    .line 390
    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    goto :goto_2

    .line 394
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 390
    :catch_2
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    :goto_2
    move-object v1, v5

    goto :goto_3

    .line 394
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 390
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 391
    :goto_3
    :try_start_4
    const-string v3, "ProcessUtil"

    const-string v4, "fail to getShellCmdResult"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 395
    if-eqz v1, :cond_1

    .line 396
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 398
    :catch_4
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 400
    :cond_1
    :goto_4
    nop

    .line 401
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 402
    nop

    .line 404
    move-object v1, v2

    :goto_6
    return-object v1

    .line 394
    :goto_7
    nop

    .line 395
    if-eqz v1, :cond_2

    .line 396
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 398
    :catch_5
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 400
    :cond_2
    :goto_8
    nop

    .line 401
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    throw v0
.end method

.method public static bc(Ljava/lang/String;)V
    .locals 5

    .line 542
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/i;->aX(Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/i;->aW(Ljava/lang/String;)Z

    .line 545
    const-string v0, "root"

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/n;->ps:Ljava/lang/String;

    const-string v2, "/data/etc/ssh/id_rsa"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/n;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 548
    const-string v0, "root"

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/n;->ps:Ljava/lang/String;

    const-string v2, "/data/etc/ssh/id_rsa"

    const-string v3, "/mnt/sdcard/tbox_all_log.tar.gz"

    sget-object v4, Lcom/xiaopeng/commonfunc/a;->nz:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/commonfunc/utils/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 552
    const-string v0, "root"

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/n;->ps:Ljava/lang/String;

    const-string v2, "/mnt/sdcard/tbox_all_log.tar.gz"

    const-string v3, "/data/etc/ssh/id_rsa"

    invoke-static {v0, v1, v2, p0, v3}, Lcom/xiaopeng/commonfunc/utils/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 556
    const-string p0, "root"

    sget-object v0, Lcom/xiaopeng/commonfunc/utils/n;->ps:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/tbox_all_log.tar.gz"

    const-string v2, "/data/etc/ssh/id_rsa"

    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 559
    return-void
.end method

.method public static eE()Ljava/lang/String;
    .locals 1

    .line 367
    const-string v0, "phytool get link_status"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/m;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static eF()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "phytool get sqi"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/m;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 515
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$m$C3d9MlRGyzQQ1QjXsbIJtu80QsM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$m$C3d9MlRGyzQQ1QjXsbIJtu80QsM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method private static synthetic g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 516
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 517
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static synthetic lambda$C3d9MlRGyzQQ1QjXsbIJtu80QsM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screencap -p "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    .line 64
    return-void
.end method
