.class public final Lcom/xiaopeng/commonfunc/utils/CmdUtil;
.super Ljava/lang/Object;
.source "CmdUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RootCmdUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 51
    if-eqz p0, :cond_0

    .line 52
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RootCmdUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    nop

    .line 57
    :goto_1
    return-void
.end method

.method public static execRootCmdAndSave(Ljava/lang/String;)V
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 17
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 18
    .local v2, "dis":Ljava/io/DataInputStream;
    const-string v3, "du /data |sort -nr |head -n20\n"

    .line 21
    .local v3, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/bin/sh"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 22
    .local v4, "p":Ljava/lang/Process;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v5

    .line 23
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 24
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 25
    const-string v5, "exit\n"

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 33
    :cond_0
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 35
    .local v5, "buffer":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    .local v6, "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 37
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 40
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "buffer":[B
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "len":I
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 41
    :catch_0
    move-exception v4

    .line 42
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "RootCmdUtil"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/CmdUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/CmdUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    nop

    .line 47
    return-void

    .line 44
    :goto_2
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/CmdUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/CmdUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method
