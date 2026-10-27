.class public Lcom/xiaopeng/musicradio/music/logic/playopt/PlayMusicListListSignIndexInfoLogic;
.super Ljava/lang/Object;
.source "PlayMusicListListSignIndexInfoLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ISyncLogic;


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.ms_opt/playmusic.list_listSign_index_info"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 5

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

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getList()Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getIndex()I

    move-result v3

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->getInfo()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    if-ltz v3, :cond_0

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz p1, :cond_0

    .line 49
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v3, p1}, Lbij;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayListListSignIndexInfoLogic"

    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public string()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayListListSignIndexInfoLogic"

    return-object v0
.end method
