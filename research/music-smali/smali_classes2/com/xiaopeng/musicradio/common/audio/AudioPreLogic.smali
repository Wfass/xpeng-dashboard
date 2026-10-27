.class public Lcom/xiaopeng/musicradio/common/audio/AudioPreLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;
.source "AudioPreLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.common.audio/pre"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/IntParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 17
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/IntParam;->getParam()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Laqt;->b()V

    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/IntParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioPreLogic;->doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
