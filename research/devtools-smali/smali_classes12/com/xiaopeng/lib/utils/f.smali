.class public Lcom/xiaopeng/lib/utils/f;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# direct methods
.method public static oN()Ljava/lang/String;
    .locals 4

    .line 312
    nop

    .line 314
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 319
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    nop

    .line 326
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    :goto_0
    return-object v3

    .line 321
    :catch_1
    move-exception v1

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 321
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 322
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    nop

    .line 326
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 329
    goto :goto_2

    .line 327
    :catch_3
    move-exception v1

    .line 328
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    :goto_2
    return-object v0

    .line 325
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 326
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 329
    goto :goto_4

    .line 327
    :catch_4
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    :goto_4
    throw v1
.end method
