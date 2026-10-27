.class public Lcom/xiaopeng/commonfunc/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "/system/bin/xpeng-su"

.field public static final SHELL_CMD_EXCUTE_SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .line 21
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/commonfunc/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;
    .locals 12
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, "result":I
    const/4 v1, 0x0

    if-eqz p0, :cond_15

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_1a

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 37
    .local v3, "successResult":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 38
    .local v4, "errorResult":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 39
    .local v5, "successMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 41
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    move-object v7, v1

    .line 43
    .local v7, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    if-eqz p1, :cond_1

    const-string v9, "/system/bin/xpeng-su"

    goto :goto_0

    :cond_1
    const-string v9, "sh"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v2, v8

    .line 44
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v8

    .line 45
    array-length v8, p0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, p0, v9

    .line 46
    .local v10, "command":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 47
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 52
    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 45
    .end local v10    # "command":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 55
    :cond_3
    const-string v8, "exit\n"

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 58
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v8

    move v0, v8

    .line 60
    if-eqz p2, :cond_5

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v8

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v8

    .line 63
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v8

    .line 64
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v8

    .line 66
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "s":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 67
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 70
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    if-eqz v8, :cond_5

    .line 71
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 81
    .end local v9    # "s":Ljava/lang/String;
    :cond_5
    nop

    .line 82
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    .line 90
    :catch_0
    move-exception v8

    goto :goto_6

    .line 84
    :goto_5
    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_6
    if-eqz v4, :cond_7

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 90
    :goto_6
    nop

    .line 91
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 92
    :cond_7
    :goto_7
    nop

    .line 94
    :goto_8
    if-eqz v2, :cond_e

    .line 95
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_12

    .line 80
    :catchall_0
    move-exception v1

    goto/16 :goto_15

    .line 77
    :catch_1
    move-exception v8

    .line 78
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v8    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_8

    .line 82
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_a

    .line 90
    :catch_2
    move-exception v8

    goto :goto_b

    .line 84
    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_9
    if-eqz v4, :cond_a

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    .line 90
    :goto_b
    nop

    .line 91
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 92
    :cond_a
    :goto_c
    nop

    .line 94
    :goto_d
    if-eqz v2, :cond_e

    goto :goto_9

    .line 75
    :catch_3
    move-exception v8

    .line 76
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_b

    .line 82
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_e

    .line 90
    :catch_4
    move-exception v8

    goto :goto_f

    .line 84
    :cond_b
    :goto_e
    if-eqz v3, :cond_c

    .line 85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_c
    if-eqz v4, :cond_d

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_10

    .line 90
    :goto_f
    nop

    .line 91
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 92
    :cond_d
    :goto_10
    nop

    .line 94
    :goto_11
    if-eqz v2, :cond_e

    goto :goto_9

    .line 98
    :cond_e
    :goto_12
    new-instance v8, Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;

    if-nez v5, :cond_f

    move-object v9, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_13
    if-nez v6, :cond_10

    goto :goto_14

    .line 99
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-direct {v8, v0, v9, v1}, Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v8

    .line 80
    :goto_15
    nop

    .line 81
    if-eqz v7, :cond_11

    .line 82
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_16

    .line 90
    :catch_5
    move-exception v8

    goto :goto_17

    .line 84
    :cond_11
    :goto_16
    if-eqz v3, :cond_12

    .line 85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_12
    if-eqz v4, :cond_13

    .line 88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_18

    .line 90
    :goto_17
    nop

    .line 91
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 92
    :cond_13
    :goto_18
    nop

    .line 94
    :goto_19
    if-eqz v2, :cond_14

    .line 95
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_14
    throw v1

    .line 32
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "successResult":Ljava/io/BufferedReader;
    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .end local v5    # "successMsg":Ljava/lang/StringBuilder;
    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    :cond_15
    :goto_1a
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;

    invoke-direct {v2, v0, v1, v1}, Lcom/xiaopeng/commonfunc/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
