.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;
.super Ljava/lang/Object;
.source "NeteasePlayListUploadBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private collectId:Ljava/lang/String;

.field private currentSongId:Ljava/lang/String;

.field private hashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->collectId:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->hashList:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->sessionId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->currentSongId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSongId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->currentSongId:Ljava/lang/String;

    return-object v0
.end method

.method public getHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->hashList:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSongId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->currentSongId:Ljava/lang/String;

    return-void
.end method

.method public setHashList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->hashList:Ljava/util/List;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/NeteasePlayListUploadBean;->sessionId:Ljava/lang/String;

    return-void
.end method
