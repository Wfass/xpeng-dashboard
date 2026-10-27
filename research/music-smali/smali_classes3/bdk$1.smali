.class Lbdk$1;
.super Lbkv;
.source "SearchAndHistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdk;->a(Ljava/lang/String;Lbfg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbfg;

.field final synthetic c:Lbdk;


# direct methods
.method constructor <init>(Lbdk;Ljava/lang/String;Lbfg;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lbdk$1;->c:Lbdk;

    iput-object p2, p0, Lbdk$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbdk$1;->b:Lbfg;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lbdk$1;->b:Lbfg;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lbdk$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lbfg;->a(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;)V
    .locals 7

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 112
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 113
    iget-object v4, p0, Lbdk$1;->c:Lbdk;

    invoke-static {v4}, Lbdk;->a(Lbdk;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v4, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;-><init>()V

    .line 115
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->d(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->c(Z)V

    .line 117
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->e(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->b(I)V

    .line 119
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayCount()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(J)V

    .line 120
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->b(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v3

    invoke-virtual {v3}, Lbaf;->b()Lbae;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(Z)V

    .line 123
    iget-object v3, p0, Lbdk$1;->c:Lbdk;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lbdk;->a(Lbdk;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(I)V

    .line 124
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->c(I)V

    .line 125
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isSupportSQ()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->b(Z)V

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lbdk$1;->c:Lbdk;

    invoke-static {v1}, Lbdk;->b(Lbdk;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lbdk$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lbdk$1;->b:Lbfg;

    if-eqz p1, :cond_1

    .line 136
    iget-object v1, p0, Lbdk$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v1}, Lbfg;->a(Ljava/util/List;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;

    invoke-virtual {p0, p1}, Lbdk$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;)V

    return-void
.end method
