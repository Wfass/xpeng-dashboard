.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;
.super Ljava/lang/Object;
.source "ContinuePlayBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private collectId:Ljava/lang/String;

.field private currentSong:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

.field private hasMore:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field private pageInfo:Lcom/xiaopeng/musicradio/bean/common/PageBean;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSong()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->currentSong:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public getHasMore()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->hasMore:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->pageInfo:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSong(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->currentSong:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method

.method public setHasMore(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->hasMore:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPageInfo(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->pageInfo:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{currentSong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->currentSong:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->pageInfo:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasMore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->hasMore:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", collectId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->collectId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
