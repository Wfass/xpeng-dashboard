.class public Lcom/xiaopeng/musicradio/common/audio/AudioHasTypeLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "AudioHasTypeLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.common.audio/hastype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/IntParam;",
        "Lcom/xiaopeng/musicradio/bean/common/BooleanParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 16
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/IntParam;->getParam()I

    move-result p1

    invoke-virtual {v0, p1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/common/audio/AudioHasTypeLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 11
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/IntParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/common/audio/AudioHasTypeLogic;->doSync(Lcom/xiaopeng/musicradio/bean/common/IntParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
