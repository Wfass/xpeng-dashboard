.class public Lcom/xiaopeng/musicradio/common/audio/AudioSetPlayModeLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;
.source "AudioSetPlayModeLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.common.audio/setplaymode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 18
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;->getPlayMode()I

    move-result v1

    invoke-interface {v0, v1}, Laqt;->a(I)V

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioSetPlayModeLogic;->doSync(Lcom/xiaopeng/musicradio/bean/common/audio/AudioPlayModeParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
