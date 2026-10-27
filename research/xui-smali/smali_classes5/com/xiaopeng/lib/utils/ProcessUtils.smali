.class public Lcom/xiaopeng/lib/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execProcess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "prog"    # Ljava/lang/String;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prog",
            "length"
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 242
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 243
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 245
    .local v4, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v4, v5

    .line 246
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 247
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 248
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 249
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v5, "respBuff":Ljava/lang/StringBuffer;
    new-array v6, p1, [C

    .line 251
    .local v6, "buff":[C
    const/4 v7, 0x0

    move v8, v7

    .line 252
    .local v8, "ch":I
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 253
    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 255
    :cond_0
    const-string v7, "ProcUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "respBuff-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 260
    .end local v5    # "respBuff":Ljava/lang/StringBuffer;
    .end local v6    # "buff":[C
    .end local v8    # "ch":I
    nop

    .line 262
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v5

    .line 264
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 269
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    goto :goto_2

    .line 270
    :catch_1
    move-exception v5

    .line 271
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_1

    .line 276
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 279
    goto :goto_3

    .line 277
    :catch_2
    move-exception v5

    .line 278
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_5

    .line 282
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_8

    .line 260
    :catchall_0
    move-exception v5

    goto :goto_9

    .line 257
    :catch_3
    move-exception v5

    .line 258
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 262
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 265
    goto :goto_5

    .line 263
    :catch_4
    move-exception v5

    .line 264
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 269
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 272
    goto :goto_6

    .line 270
    :catch_5
    move-exception v5

    .line 271
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    .line 276
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 279
    goto :goto_7

    .line 277
    :catch_6
    move-exception v5

    .line 278
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    goto :goto_4

    .line 286
    :cond_5
    :goto_8
    return-object v0

    .line 260
    :goto_9
    if-eqz v1, :cond_6

    .line 262
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 265
    goto :goto_a

    .line 263
    :catch_7
    move-exception v6

    .line 264
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :goto_a
    if-eqz v2, :cond_7

    .line 269
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 272
    goto :goto_b

    .line 270
    :catch_8
    move-exception v6

    .line 271
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_b
    if-eqz v3, :cond_8

    .line 276
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 279
    goto :goto_c

    .line 277
    :catch_9
    move-exception v6

    .line 278
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :goto_c
    if-eqz v4, :cond_9

    .line 282
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 284
    :cond_9
    throw v5
.end method

.method public static getAppCpuTime()J
    .locals 12

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "cpuInfos":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 83
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 85
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 86
    .local v4, "pid":I
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 87
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 88
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x3e8

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v5

    .line 89
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "load":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 91
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 96
    .end local v4    # "pid":I
    .end local v5    # "load":Ljava/lang/String;
    :cond_0
    nop

    .line 98
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 105
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    goto :goto_1

    .line 106
    :catch_1
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 112
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    :goto_2
    goto :goto_5

    .line 113
    :catch_2
    move-exception v4

    .line 114
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 93
    :catch_3
    move-exception v4

    .line 94
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 98
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 101
    goto :goto_3

    .line 99
    :catch_4
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 105
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 108
    goto :goto_4

    .line 106
    :catch_5
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 112
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 119
    :cond_3
    :goto_5
    const-wide/16 v4, 0x0

    .line 120
    .local v4, "appCpuTime":J
    if-eqz v0, :cond_4

    array-length v6, v0

    const/16 v7, 0x10

    if-le v6, v7, :cond_4

    .line 121
    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v6, 0xe

    aget-object v6, v0, v6

    .line 122
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aget-object v6, v0, v7

    .line 123
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long v4, v8, v6

    .line 125
    :cond_4
    return-wide v4

    .line 96
    .end local v4    # "appCpuTime":J
    :goto_6
    if-eqz v1, :cond_5

    .line 98
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 101
    goto :goto_7

    .line 99
    :catch_6
    move-exception v5

    .line 100
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 105
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 108
    goto :goto_8

    .line 106
    :catch_7
    move-exception v5

    .line 107
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 112
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 115
    goto :goto_9

    .line 113
    :catch_8
    move-exception v5

    .line 114
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    throw v4
.end method

.method public static getAppMemoryUsed(Landroid/content/Context;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 27
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 28
    .local v2, "runningAppProcessesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 29
    .local v4, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 34
    .local v3, "pid":I
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    .line 35
    .local v5, "pids":[I
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v7

    .line 36
    .local v7, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    aget-object v8, v7, v6

    iget v8, v8, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    aget-object v6, v7, v6

    iget v6, v6, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v8, v6

    .line 37
    .local v8, "memorySize":I
    mul-int/lit16 v6, v8, 0x400

    int-to-long v9, v6

    return-wide v9

    .line 39
    .end local v3    # "pid":I
    .end local v4    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "pids":[I
    .end local v7    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v8    # "memorySize":I
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    const-wide/16 v3, 0x0

    return-wide v3
.end method

.method public static getAvailableMemory(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 57
    .local v1, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 58
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 59
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v3
.end method

.method public static getCurProcessName()Ljava/lang/String;
    .locals 5

    .line 315
    const/4 v0, 0x0

    move-object v1, v0

    .line 317
    .local v1, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 319
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 320
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "processName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 322
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    nop

    .line 329
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object v4

    .line 328
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 324
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    nop

    .line 329
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 332
    goto :goto_1

    .line 330
    :catch_2
    move-exception v3

    .line 331
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 329
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    goto :goto_3

    .line 330
    :catch_3
    move-exception v2

    .line 331
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method

.method public static getProcessCpuRate()[I
    .locals 12

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 182
    .local v0, "cpuRateArray":[I
    const/4 v1, 0x0

    .line 183
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 184
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 185
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 188
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "top -n 1"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v1, v5

    .line 189
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, v5

    .line 190
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 192
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 193
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "execResult":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 194
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_0

    .line 195
    goto :goto_0

    .line 197
    :cond_0
    const-string v5, "ProcessCpuRate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const-string v5, "%"

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "CPUUsr":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v5, v8

    const-string v10, "User"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "CPUUsage":[Ljava/lang/String;
    aget-object v10, v5, v7

    const-string v11, "System"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "SYSUsage":[Ljava/lang/String;
    aget-object v11, v9, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v0, v8

    .line 202
    aget-object v8, v10, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    nop

    .line 209
    .end local v5    # "CPUUsr":[Ljava/lang/String;
    .end local v6    # "execResult":Ljava/lang/String;
    .end local v9    # "CPUUsage":[Ljava/lang/String;
    .end local v10    # "SYSUsage":[Ljava/lang/String;
    :cond_1
    nop

    .line 211
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    goto :goto_1

    .line 212
    :catch_0
    move-exception v5

    .line 213
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 218
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    goto :goto_2

    .line 219
    :catch_1
    move-exception v5

    .line 220
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_2

    .line 225
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    goto :goto_3

    .line 226
    :catch_2
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-eqz v1, :cond_6

    .line 231
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_8

    .line 209
    :catchall_0
    move-exception v5

    goto :goto_9

    .line 206
    :catch_3
    move-exception v5

    .line 207
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 211
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 214
    goto :goto_5

    .line 212
    :catch_4
    move-exception v5

    .line 213
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 218
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 221
    goto :goto_6

    .line 219
    :catch_5
    move-exception v5

    .line 220
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 225
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 228
    goto :goto_7

    .line 226
    :catch_6
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    goto :goto_4

    .line 235
    :cond_6
    :goto_8
    return-object v0

    .line 209
    :goto_9
    if-eqz v2, :cond_7

    .line 211
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 214
    goto :goto_a

    .line 212
    :catch_7
    move-exception v6

    .line 213
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_a
    if-eqz v3, :cond_8

    .line 218
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 221
    goto :goto_b

    .line 219
    :catch_8
    move-exception v6

    .line 220
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :goto_b
    if-eqz v4, :cond_9

    .line 225
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 228
    goto :goto_c

    .line 226
    :catch_9
    move-exception v6

    .line 227
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    :goto_c
    if-eqz v1, :cond_a

    .line 231
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 233
    :cond_a
    throw v5
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cxt",
            "pid"
        }
    .end annotation

    .line 296
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 297
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 299
    return-object v2

    .line 301
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 302
    .local v4, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_1

    .line 303
    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    .line 305
    .end local v4    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 306
    :cond_2
    return-object v2
.end method

.method private getRunningAppProcessInfo()V
    .locals 0

    .line 46
    return-void
.end method

.method public static getTotalCpuTime()J
    .locals 12

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "cpuInfos":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 134
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 135
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 137
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/stat"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 138
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 139
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x3e8

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v4

    .line 140
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "load":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 142
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 147
    .end local v4    # "load":Ljava/lang/String;
    :cond_0
    nop

    .line 149
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 156
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    goto :goto_1

    .line 157
    :catch_1
    move-exception v4

    .line 158
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 163
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    :goto_2
    goto :goto_5

    .line 164
    :catch_2
    move-exception v4

    .line 165
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 147
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 144
    :catch_3
    move-exception v4

    .line 145
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 152
    goto :goto_3

    .line 150
    :catch_4
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 156
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 159
    goto :goto_4

    .line 157
    :catch_5
    move-exception v4

    .line 158
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 163
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 170
    :cond_3
    :goto_5
    const-wide/16 v4, 0x0

    .line 171
    .local v4, "totalCpu":J
    if-eqz v0, :cond_4

    array-length v6, v0

    const/16 v7, 0x8

    if-le v6, v7, :cond_4

    .line 172
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v6, 0x3

    aget-object v6, v0, v6

    .line 173
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v6, 0x6

    aget-object v6, v0, v6

    .line 174
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v6, 0x7

    aget-object v6, v0, v6

    .line 175
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long v4, v8, v6

    .line 177
    :cond_4
    return-wide v4

    .line 147
    .end local v4    # "totalCpu":J
    :goto_6
    if-eqz v1, :cond_5

    .line 149
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 152
    goto :goto_7

    .line 150
    :catch_6
    move-exception v5

    .line 151
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 156
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 159
    goto :goto_8

    .line 157
    :catch_7
    move-exception v5

    .line 158
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 163
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 166
    goto :goto_9

    .line 164
    :catch_8
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    throw v4
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "safeContext":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 71
    .local v1, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 72
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 73
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v3
.end method
