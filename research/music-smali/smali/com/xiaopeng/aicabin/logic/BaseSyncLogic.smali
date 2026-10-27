.class public Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;
.super Lcom/xiaopeng/aicabin/logic/BaseLogic;
.source "BaseSyncLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ISyncLogic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHandle()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object v0
.end method

.method public final exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mParams:Lcom/xiaopeng/aicabin/DataReq;

    .line 2
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->beforeHandle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;->handle()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v0, "beforeHandle error"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/BaseSyncLogic;->afterHandle()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method public handle()V
    .locals 0

    return-void
.end method
