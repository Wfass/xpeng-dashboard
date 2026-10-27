.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/BtMusicGetPlayingInfoBizLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "BtMusicGetPlayingInfoBizLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.play/getbtplayinginfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 14
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/BtMusicGetPlayingInfoBizLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
