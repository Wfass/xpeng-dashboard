.class public Lcom/xiaopeng/musicradio/music/logic/bluetooth/IsBtPlayingLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "IsBtPlayingLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.blue/is_bt_playing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/BooleanParam;",
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
    .locals 2

    .line 14
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/logic/bluetooth/IsBtPlayingLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
