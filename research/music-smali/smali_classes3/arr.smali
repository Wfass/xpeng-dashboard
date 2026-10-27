.class public Larr;
.super Ljava/lang/Object;
.source "MusicLoveMerger.java"

# interfaces
.implements Larq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songIds:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraIds:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->versions:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Ljava/util/LinkedList;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Larr;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "merge: ======= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MusicLoveMerger"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    .line 28
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Larr;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Larr;->c(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Larr;->d(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v3, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getReissueType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setVersions(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, p2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setMergeList(Ljava/util/List;)V

    return-object v3
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Z
    .locals 1

    .line 16
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "music_love"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
