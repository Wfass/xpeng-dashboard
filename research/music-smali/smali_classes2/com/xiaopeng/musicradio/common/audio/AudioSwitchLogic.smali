.class public Lcom/xiaopeng/musicradio/common/audio/AudioSwitchLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "AudioSwitchLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.common.audio/switchtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;",
        "Lcom/xiaopeng/musicradio/bean/common/IntParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 3

    .line 17
    invoke-static {}, Lbbv;->a()Lbbv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;->getSubType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbbv;->a(II)V

    .line 19
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 12
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioSwitchLogic;->doSync(Lcom/xiaopeng/musicradio/bean/common/audio/AudioSwitchParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
