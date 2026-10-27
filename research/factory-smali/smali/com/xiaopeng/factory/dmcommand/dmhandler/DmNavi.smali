.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmNavi.java"


# instance fields
.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dmResponseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->CMD_NAME:[B

    .line 17
    const-string v0, "DmNavi"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->CLASS_NAME:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-direct {v0, p2}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;-><init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 20
    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        0x1at
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 44
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 3
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "resData":[B
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->checkArgu([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->genUuid()V

    goto :goto_1

    .line 28
    :cond_0
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->mNaviPresenter:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readUuid()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 31
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->responseWithValue([B[B)[B

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->responseNG([B)[B

    move-result-object v2

    move-object v0, v2

    .line 35
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;->responseNA([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 38
    :goto_1
    monitor-exit p0

    return-object v0

    .line 23
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;
    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
