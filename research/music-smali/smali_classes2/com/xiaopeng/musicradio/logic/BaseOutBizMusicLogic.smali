.class public abstract Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "BaseOutBizMusicLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Out:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;",
        "TOut;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    return-void
.end method

.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public exeAsync(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;->doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;->doSync()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
