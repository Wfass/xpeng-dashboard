.class public Lcom/xiaopeng/musicradio/music/logic/bluetooth/ChangeToBluetoothLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;
.source "ChangeToBluetoothLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.blue/change_to_bluetooth"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 13
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t()V

    .line 14
    invoke-super {p0}, Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;->doSync()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
