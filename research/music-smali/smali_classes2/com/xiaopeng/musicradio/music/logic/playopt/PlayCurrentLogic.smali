.class public Lcom/xiaopeng/musicradio/music/logic/playopt/PlayCurrentLogic;
.super Ljava/lang/Object;
.source "PlayCurrentLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ISyncLogic;


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/play_current"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "params"

    .line 43
    invoke-virtual {p1, v1}, Lcom/xiaopeng/aicabin/DataReq;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    instance-of v1, p1, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;

    if-eqz v1, :cond_0

    .line 45
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->getAccountType()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->getInfo()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->isCheckAccount()Z

    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->isOnlyInsert()Z

    move-result p1

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1, p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayCurrentLogic"

    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public string()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayCurrentLogic"

    return-object v0
.end method
