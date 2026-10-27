.class public Lcom/xiaopeng/musicradio/music/logic/playopt/LoadNextPageLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;
.source "LoadNextPageLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/load_next_page"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 18
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/music/h;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->w()Z

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;->doSync()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
