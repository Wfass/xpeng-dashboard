.class public Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;
.super Ljava/lang/Object;
.source "DmResponseWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DmResponseWriter"


# instance fields
.field private mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;


# direct methods
.method public constructor <init>(Landroid/car/diagnostic/XpDiagnosticManager;)V
    .locals 2
    .param p1, "xpDiagnosticManager"    # Landroid/car/diagnostic/XpDiagnosticManager;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "DmResponseWriter"

    const-string v1, "Create DmResponseWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->updateDmResponseWriter(Landroid/car/diagnostic/XpDiagnosticManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public updateDmResponseWriter(Landroid/car/diagnostic/XpDiagnosticManager;)V
    .locals 2
    .param p1, "xpDiagnosticManager"    # Landroid/car/diagnostic/XpDiagnosticManager;

    .line 18
    const-string v0, "DmResponseWriter"

    const-string v1, "update DmResponseWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 20
    return-void
.end method

.method public declared-synchronized write([B)Z
    .locals 4
    .param p1, "msg"    # [B

    monitor-enter p0

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->convert64Byte([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/car/diagnostic/XpDiagnosticManager;->sendMcuDiagCmdAck([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "result":Z
    .end local p1    # "msg":[B
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 29
    .restart local v0    # "result":Z
    .restart local p1    # "msg":[B
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    nop

    .line 32
    :goto_1
    const-string v1, "DmResponseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write response :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return v0

    .line 22
    .end local v0    # "result":Z
    .end local p1    # "msg":[B
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;
    throw p1
.end method
