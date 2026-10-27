.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmTestResult.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$TestResult;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->CMD_NAME:[B

    .line 16
    const-string v0, "DmTestResult"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->CLASS_NAME:Ljava/lang/String;

    .line 17
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
    .locals 6
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "resData":[B
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->checkArgu([B[B)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 24
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 25
    .local v1, "id":I
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    .line 26
    .local v2, "value":B
    iget-object v3, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseOK([B)[B

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseNG([B)[B

    move-result-object v3

    move-object v0, v3

    .line 32
    .end local v1    # "id":I
    .end local v2    # "value":B
    :goto_0
    goto/16 :goto_2

    :cond_1
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 34
    .restart local v1    # "id":I
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->readTestResult(I)B

    move-result v2

    .line 35
    .restart local v2    # "value":B
    iget-object v3, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseWithValue([B[B)[B

    move-result-object v3

    move-object v0, v3

    .line 37
    .end local v1    # "id":I
    .end local v2    # "value":B
    goto/16 :goto_2

    :cond_2
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    aget-byte v1, p1, v1

    .line 39
    .local v1, "value":B
    iget-object v2, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "full write value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->createTestResultFile(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseOK([B)[B

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseNG([B)[B

    move-result-object v2

    move-object v0, v2

    .line 45
    .end local v1    # "value":B
    :goto_1
    goto :goto_2

    :cond_4
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    invoke-static {}, Lcom/xiaopeng/factory/utils/TestResultUtil;->createAgingTestResultFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseOK([B)[B

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 49
    :cond_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseNG([B)[B

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 51
    :cond_6
    new-array v1, v1, [B

    fill-array-data v1, :array_4

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    invoke-static {}, Lcom/xiaopeng/factory/utils/TestResultUtil;->readAgingTestRecord()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/factory/bean/factorytest/AgingTestResult;

    invoke-direct {v2, v1}, Lcom/xiaopeng/factory/bean/factorytest/AgingTestResult;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "mAgingTestResult":Lcom/xiaopeng/factory/bean/factorytest/AgingTestResult;
    invoke-virtual {v2}, Lcom/xiaopeng/factory/bean/factorytest/AgingTestResult;->toByteArrayForDm()[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseWithValue([B[B)[B

    move-result-object v3

    move-object v0, v3

    .line 55
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "mAgingTestResult":Lcom/xiaopeng/factory/bean/factorytest/AgingTestResult;
    goto :goto_2

    .line 56
    :cond_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;->responseNA([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 58
    :goto_2
    monitor-exit p0

    return-object v0

    .line 20
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;
    throw p1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
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
        0x3t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x3t
        0x1t
    .end array-data
.end method
