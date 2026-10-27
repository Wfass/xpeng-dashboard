.class public Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;
.super Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.source "DmIndivTest.java"


# instance fields
.field private mIndivPresenter:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dmResponseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->CMD_NAME:[B

    .line 16
    const-string v0, "DmIndivTest"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->CLASS_NAME:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-direct {v0, p2}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;-><init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->mIndivPresenter:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->mIndivPresenter:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->init()V

    .line 19
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->mIndivPresenter:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->deinit()V

    .line 37
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 2
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "resData":[B
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->checkArgu([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->mIndivPresenter:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->checkIndiv()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;->responseNA([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 30
    :goto_0
    monitor-exit p0

    return-object v0

    .line 22
    .end local v0    # "resData":[B
    .end local p1    # "argu":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;
    throw p1

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
