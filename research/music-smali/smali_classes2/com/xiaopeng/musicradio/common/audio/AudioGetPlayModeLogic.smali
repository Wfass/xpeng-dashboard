.class public Lcom/xiaopeng/musicradio/common/audio/AudioGetPlayModeLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "AudioGetPlayModeLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.common.audio/getplaymode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/IntParam;",
        "Lcom/xiaopeng/musicradio/bean/common/IntParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 18
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/IntParam;->getParam()I

    move-result p1

    invoke-virtual {v0, p1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/IntParam;

    invoke-interface {p1}, Laqt;->c()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/bean/common/IntParam;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/common/audio/AudioGetPlayModeLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/bean/common/IntParam;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/bean/common/IntParam;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioGetPlayModeLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/IntParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioGetPlayModeLogic;->doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
