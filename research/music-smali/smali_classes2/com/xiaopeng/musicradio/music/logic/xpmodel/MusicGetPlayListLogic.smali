.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/MusicGetPlayListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "MusicGetPlayListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.play/getplaylist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/music/MusicPlayListBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 16
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/MusicPlayListBean;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/MusicPlayListBean;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/MusicGetPlayListLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
