.class public Lcom/xiaopeng/musicradio/netradio/logic/NetRadioPlayLiveLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;
.source "NetRadioPlayLiveLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.netradio.play/playlive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 19
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 20
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioPlayLiveLogic;->doSync(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
