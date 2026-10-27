.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmVersName.java"


# instance fields
.field private mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dmResponseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$VersName;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CMD_NAME:[B

    .line 20
    const-string v0, "DmVersName"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-direct {v0, p2}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;-><init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 75
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 4
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 28
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "softwareId":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softwareId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    const-string v2, "_REV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after substring softwareId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseWithValue([B[B)[B

    move-result-object v1

    .local v1, "resData":[B
    goto :goto_0

    .line 36
    .end local v1    # "resData":[B
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNG([B)[B

    move-result-object v1

    .end local v0    # "softwareId":Ljava/lang/String;
    .restart local v1    # "resData":[B
    :goto_0
    move-object v0, v1

    .line 38
    .end local v1    # "resData":[B
    .local v0, "resData":[B
    goto/16 :goto_5

    .end local v0    # "resData":[B
    :cond_1
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readVmapVer()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "mapVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseWithValue([B[B)[B

    move-result-object v1

    .restart local v1    # "resData":[B
    goto :goto_1

    .line 44
    .end local v1    # "resData":[B
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNG([B)[B

    move-result-object v1

    .end local v0    # "mapVersion":Ljava/lang/String;
    .restart local v1    # "resData":[B
    :goto_1
    move-object v0, v1

    .line 46
    .end local v1    # "resData":[B
    .local v0, "resData":[B
    goto/16 :goto_5

    .end local v0    # "resData":[B
    :cond_3
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHwVersion()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "hwVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hwVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseWithValue([B[B)[B

    move-result-object v1

    .restart local v1    # "resData":[B
    goto :goto_2

    .line 52
    .end local v1    # "resData":[B
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNG([B)[B

    move-result-object v1

    .end local v0    # "hwVersion":Ljava/lang/String;
    .restart local v1    # "resData":[B
    :goto_2
    move-object v0, v1

    .line 54
    .end local v1    # "resData":[B
    .local v0, "resData":[B
    goto/16 :goto_5

    .end local v0    # "resData":[B
    :cond_5
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    new-instance v0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->getDtsVer()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "dtsVer":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dtsVer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    if-eqz v0, :cond_6

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseWithValue([B[B)[B

    move-result-object v1

    .restart local v1    # "resData":[B
    goto :goto_3

    .line 60
    .end local v1    # "resData":[B
    :cond_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNG([B)[B

    move-result-object v1

    .end local v0    # "dtsVer":Ljava/lang/String;
    .restart local v1    # "resData":[B
    :goto_3
    move-object v0, v1

    .line 62
    .end local v1    # "resData":[B
    .local v0, "resData":[B
    goto :goto_5

    .end local v0    # "resData":[B
    :cond_7
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->checkArgu([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    new-instance v0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->checkRomSha1Sum()Z

    move-result v0

    .line 64
    .local v0, "sha1Result":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sha1Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseOK([B)[B

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNG([B)[B

    move-result-object v1

    .end local v0    # "sha1Result":Z
    :goto_4
    move-object v0, v1

    .line 66
    .local v0, "resData":[B
    goto :goto_5

    .line 67
    .end local v0    # "resData":[B
    :cond_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;->responseNA([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .restart local v0    # "resData":[B
    :goto_5
    monitor-exit p0

    return-object v0

    .line 27
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;
    throw p1

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x5t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x6t
    .end array-data
.end method
