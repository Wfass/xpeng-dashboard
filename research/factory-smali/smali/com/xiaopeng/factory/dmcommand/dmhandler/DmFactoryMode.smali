.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmFactoryMode.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->CMD_NAME:[B

    .line 14
    const-string v0, "DmFactoryMode"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->CLASS_NAME:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 45
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 4
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 20
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "enable factory mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->setFactoryMode(Z)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->responseOK([B)[B

    move-result-object v0

    .local v0, "resData":[B
    :goto_0
    goto :goto_2

    .line 24
    .end local v0    # "resData":[B
    :cond_0
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "disable factory mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->setFactoryMode(Z)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->responseOK([B)[B

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->checkArgu([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->isFactoryMode()Z

    move-result v0

    .line 30
    .local v0, "isFactoryMode":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFactoryMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    if-eqz v0, :cond_2

    .line 32
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->STATUS_ON:[B

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->responseWithValue([B[B)[B

    move-result-object v1

    .local v1, "resData":[B
    goto :goto_1

    .line 34
    .end local v1    # "resData":[B
    :cond_2
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->STATUS_OFF:[B

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->responseWithValue([B[B)[B

    move-result-object v1

    .end local v0    # "isFactoryMode":Z
    .restart local v1    # "resData":[B
    :goto_1
    move-object v0, v1

    .line 36
    .end local v1    # "resData":[B
    .local v0, "resData":[B
    goto :goto_2

    .line 37
    .end local v0    # "resData":[B
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;->responseNA([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .restart local v0    # "resData":[B
    :goto_2
    monitor-exit p0

    return-object v0

    .line 19
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;
    throw p1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method
