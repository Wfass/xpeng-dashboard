.class public final Lcom/blankj/utilcode/util/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p2, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 145
    .local p1, "envp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 145
    :goto_0
    invoke-static {v1, v2, p2, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p2, "isRooted"    # Z
    .param p3, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 217
    .local p1, "envp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRooted"    # Z

    .line 133
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "isRooted"    # Z
    .param p3, "isNeedResultMsg"    # Z

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 3
    .param p2, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 173
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "envp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    .line 173
    invoke-static {v2, v1, p2, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 2
    .param p1, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 159
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 1
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 249
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRooted"    # Z

    .line 187
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .locals 11
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "isRooted"    # Z
    .param p3, "isNeedResultMsg"    # Z

    .line 285
    const/4 v0, -0x1

    .line 286
    .local v0, "result":I
    if-eqz p0, :cond_12

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_1c

    .line 289
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 291
    .local v2, "successResult":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 292
    .local v3, "errorResult":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 293
    .local v4, "successMsg":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 294
    .local v5, "errorMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move-object v7, v6

    .line 296
    .local v7, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    if-eqz p2, :cond_1

    const-string v9, "su"

    goto :goto_0

    :cond_1
    const-string v9, "sh"

    :goto_0
    invoke-virtual {v8, v9, p1, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v6

    move-object v1, v6

    .line 297
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v6

    .line 298
    array-length v6, p0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v9, p0, v8

    .line 299
    .local v9, "command":Ljava/lang/String;
    if-nez v9, :cond_2

    .end local v9    # "command":Ljava/lang/String;
    goto :goto_2

    .line 300
    .restart local v9    # "command":Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 301
    sget-object v10, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 298
    .end local v9    # "command":Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 304
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 306
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v6

    move v0, v6

    .line 307
    if-eqz p3, :cond_5

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    .line 310
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 311
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    .line 313
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 314
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 317
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .local v8, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 318
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_4

    .line 320
    sget-object v6, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 323
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_5

    .line 324
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_5

    .line 326
    sget-object v6, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 334
    .end local v8    # "line":Ljava/lang/String;
    :cond_5
    nop

    .line 335
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 337
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 339
    :goto_5
    nop

    .line 341
    :goto_6
    if-eqz v2, :cond_6

    .line 342
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 344
    :catch_1
    move-exception v6

    .line 345
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 346
    :cond_6
    :goto_7
    nop

    .line 348
    :goto_8
    if-eqz v3, :cond_7

    .line 349
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    .line 351
    :catch_2
    move-exception v6

    .line 352
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 353
    :cond_7
    :goto_9
    nop

    .line 354
    :goto_a
    if-eqz v1, :cond_b

    .line 355
    :goto_b
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_12

    .line 333
    :catchall_0
    move-exception v6

    goto :goto_15

    .line 330
    :catch_3
    move-exception v6

    .line 331
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 334
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    .line 335
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    .line 337
    :catch_4
    move-exception v6

    .line 338
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 339
    :cond_8
    :goto_c
    nop

    .line 341
    :goto_d
    if-eqz v2, :cond_9

    .line 342
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    .line 344
    :catch_5
    move-exception v6

    .line 345
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 346
    :cond_9
    :goto_e
    nop

    .line 348
    :goto_f
    if-eqz v3, :cond_a

    .line 349
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_10

    .line 351
    :catch_6
    move-exception v6

    .line 352
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 353
    :cond_a
    :goto_10
    nop

    .line 354
    :goto_11
    if-eqz v1, :cond_b

    goto :goto_b

    .line 358
    :cond_b
    :goto_12
    new-instance v6, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    if-nez v4, :cond_c

    const-string v8, ""

    goto :goto_13

    .line 360
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_13
    if-nez v5, :cond_d

    const-string v9, ""

    goto :goto_14

    .line 361
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_14
    invoke-direct {v6, v0, v8, v9}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    return-object v6

    .line 333
    :goto_15
    nop

    .line 334
    if-eqz v7, :cond_e

    .line 335
    :try_start_8
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_16

    .line 337
    :catch_7
    move-exception v8

    .line 338
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 339
    :cond_e
    :goto_16
    nop

    .line 341
    :goto_17
    if-eqz v2, :cond_f

    .line 342
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_18

    .line 344
    :catch_8
    move-exception v8

    .line 345
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 346
    :cond_f
    :goto_18
    nop

    .line 348
    :goto_19
    if-eqz v3, :cond_10

    .line 349
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_1a

    .line 351
    :catch_9
    move-exception v8

    .line 352
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_1b

    .line 353
    :cond_10
    :goto_1a
    nop

    .line 354
    :goto_1b
    if-eqz v1, :cond_11

    .line 355
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 357
    :cond_11
    throw v6

    .line 287
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "successResult":Ljava/io/BufferedReader;
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v4    # "successMsg":Ljava/lang/StringBuilder;
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    :cond_12
    :goto_1c
    new-instance v1, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v0, v2, v3}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static execCmdAsync(Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 38
    .local p2, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync(Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 82
    .local p3, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync(Ljava/util/List;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p1, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 52
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync(Ljava/util/List;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 1
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 98
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync([Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 66
    .local p2, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .locals 2
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRooted"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .param p3    # Lcom/blankj/utilcode/util/Utils$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    .line 116
    .local p3, "consumer":Lcom/blankj/utilcode/util/Utils$Consumer;, "Lcom/blankj/utilcode/util/Utils$Consumer<Lcom/blankj/utilcode/util/ShellUtils$CommandResult;>;"
    if-eqz p3, :cond_0

    .line 117
    new-instance v0, Lcom/blankj/utilcode/util/ShellUtils$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;[Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'consumer\' of type Utils.Consumer<CommandResult> (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
