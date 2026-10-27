.class public Lcom/xiaopeng/musicradio/music/logic/playopt/HasNextPageLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "HasNextPageLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/has_next_page"
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

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 3

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x0

    .line 24
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/music/h;

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->s()Z

    move-result v0

    .line 31
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/logic/playopt/HasNextPageLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
