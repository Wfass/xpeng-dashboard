.class public Lcom/xiaopeng/musicradio/netradio/logic/NetRadioGetPlayListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "NetRadioGetPlayListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.netradio.play/getplaylist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioPlayListBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 19
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->p()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioPlayListBean;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioPlayListBean;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioGetPlayListLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
