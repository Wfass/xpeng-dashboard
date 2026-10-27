.class public Lcom/xiaopeng/musicradio/music/logic/playopt/PlayMusicLogic;
.super Ljava/lang/Object;
.source "PlayMusicLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ISyncLogic;


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/play_music"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "params"

    .line 40
    invoke-virtual {p1, v1}, Lcom/xiaopeng/aicabin/DataReq;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    instance-of v1, p1, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getListSign()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getAccountType()I

    move-result v3

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getQuality()I

    move-result v4

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->isSupportRandom()Z

    move-result v5

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getIndex()I

    move-result v7

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getPage()I

    move-result v8

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getList()Ljava/util/List;

    move-result-object v6

    .line 50
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lbij;->a(Ljava/lang/String;IIZLjava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayMusicLogic"

    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public string()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayMusicLogic"

    return-object v0
.end method
