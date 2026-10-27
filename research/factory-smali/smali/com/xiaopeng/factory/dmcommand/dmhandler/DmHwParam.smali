.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmHwParam.java"


# instance fields
.field private mHWAndSWInfoPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$HwParam;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->CMD_NAME:[B

    .line 20
    const-string v0, "DmHwParam"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->CLASS_NAME:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-direct {v0, p2}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;-><init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->mHWAndSWInfoPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 64
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 7
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "resData":[B
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v1, "/sys/class/scsi_disk/0:0:0:0/device/block/sda/size"

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->readLongVal(Ljava/lang/String;)J

    move-result-wide v1

    .line 30
    .local v1, "size":J
    const-wide/16 v3, 0x200

    mul-long/2addr v3, v1

    const-wide/32 v5, 0x3b9aca00

    div-long/2addr v3, v5

    move-wide v1, v3

    .line 31
    const-wide/16 v3, 0x78

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 32
    const-wide/16 v1, 0x80

    .line 34
    :cond_0
    long-to-int v3, v1

    invoke-static {v3}, Lcom/xiaopeng/factory/utils/DataHelp;->intToByte1(I)[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v3

    move-object v0, v3

    .line 35
    .end local v1    # "size":J
    goto/16 :goto_0

    :cond_1
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    const-string v1, "/sys/class/scsi_disk/0:0:0:0/device/model"

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "model":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 38
    .end local v1    # "model":Ljava/lang/String;
    goto/16 :goto_0

    :cond_2
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->mHWAndSWInfoPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->requestCarCode()V

    goto/16 :goto_0

    .line 40
    :cond_3
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getPartNumber()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "pn":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 43
    .end local v1    # "pn":Ljava/lang/String;
    goto/16 :goto_0

    :cond_4
    new-array v2, v1, [B

    fill-array-data v2, :array_4

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "cduid":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 46
    .end local v1    # "cduid":Ljava/lang/String;
    goto :goto_0

    :cond_5
    new-array v2, v1, [B

    fill-array-data v2, :array_5

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "iccid":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 49
    .end local v1    # "iccid":Ljava/lang/String;
    goto :goto_0

    :cond_6
    new-array v2, v1, [B

    fill-array-data v2, :array_6

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "swver":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 52
    .end local v1    # "swver":Ljava/lang/String;
    goto :goto_0

    :cond_7
    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHwVersion()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "hwver":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    .line 55
    .end local v1    # "hwver":Ljava/lang/String;
    goto :goto_0

    .line 56
    :cond_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;->responseNA([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 58
    :goto_0
    monitor-exit p0

    return-object v0

    .line 25
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;
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
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x2t
        0x4t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x2t
        0x5t
    .end array-data
.end method
