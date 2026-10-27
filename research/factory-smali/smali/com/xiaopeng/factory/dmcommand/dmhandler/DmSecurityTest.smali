.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmSecurityTest.java"


# instance fields
.field private mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dmResponseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CMD_NAME:[B

    .line 16
    const-string v0, "DmSecurityTest"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CLASS_NAME:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {v0, p2}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;-><init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 18
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->disconnectCertWifi()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->onDestroy()V

    .line 52
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 3
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "resData":[B
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CMD_NAME:[B

    const-string v2, "verify CDU key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyCduKey()V

    goto/16 :goto_0

    .line 26
    :cond_0
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CMD_NAME:[B

    const-string v2, "verify TBOX key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->startTboxCertVerify()V

    goto :goto_0

    .line 29
    :cond_1
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CMD_NAME:[B

    const-string v2, "verify WIFI key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyWifiKey()V

    goto :goto_0

    .line 32
    :cond_2
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CMD_NAME:[B

    const-string v2, "verify PSU key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyPsuKey()V

    goto :goto_0

    .line 35
    :cond_3
    new-array v2, v1, [B

    fill-array-data v2, :array_4

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "verify CDU V18 key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyV18CduKey()V

    goto :goto_0

    .line 38
    :cond_4
    new-array v1, v1, [B

    fill-array-data v1, :array_5

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "change to CDU V18 ca cert"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->mTestSecurityPresenter:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->changeV18CaCert()V

    goto :goto_0

    .line 42
    :cond_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;->responseNA([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 44
    :goto_0
    monitor-exit p0

    return-object v0

    .line 21
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;
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
        0x1t
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x4t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2t
        0x4t
    .end array-data
.end method
