.class Lbbj$1;
.super Ljava/lang/Object;
.source "KugouZoneSongPreloadHandler.java"

# interfaces
.implements Lbbo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbj;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbo$a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lbbj;


# direct methods
.method constructor <init>(Lbbj;Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIII)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbbj$1;->g:Lbbj;

    iput-object p2, p0, Lbbj$1;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iput-boolean p3, p0, Lbbj$1;->b:Z

    iput p4, p0, Lbbj$1;->c:I

    iput p5, p0, Lbbj$1;->d:I

    iput p6, p0, Lbbj$1;->e:I

    iput p7, p0, Lbbj$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lbbj$1;->g:Lbbj;

    invoke-virtual {v0}, Lbbj;->b()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {p0, p1}, Lbbj$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)I

    move-result p1

    return p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestPageData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsFindHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, p0, Lbbj$1;->g:Lbbj;

    iget-object v3, p0, Lbbj$1;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-boolean v4, p0, Lbbj$1;->b:Z

    iget v7, p0, Lbbj$1;->c:I

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lbbj;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIII)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 122
    iget-object v0, p0, Lbbj$1;->g:Lbbj;

    iget-object v0, v0, Lbbj;->a:Laxz;

    iget-boolean v1, p0, Lbbj$1;->b:Z

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lbub$a;->server_error_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v3, v2}, Laxz;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;I)V
    .locals 11

    .line 101
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 104
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_2
    iget-object v4, p0, Lbbj$1;->g:Lbbj;

    iget-boolean v6, p0, Lbbj$1;->b:Z

    iget v8, p0, Lbbj$1;->e:I

    iget v10, p0, Lbbj$1;->f:I

    move-object v5, p1

    move v9, p3

    invoke-virtual/range {v4 .. v10}, Lbbj;->b(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZLjava/util/List;III)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V
    .locals 0

    .line 36
    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {p0, p1, p2, p3}, Lbbj$1;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responsePageData: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsFindHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 61
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    .line 66
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget p1, p0, Lbbj$1;->d:I

    .line 73
    iget v3, p0, Lbbj$1;->e:I

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 77
    invoke-static {v6}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 79
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 80
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 84
    :cond_5
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    .line 86
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    iget v4, p0, Lbbj$1;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 89
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    if-ne v3, p1, :cond_7

    add-int/lit8 v3, v3, -0x1

    move v9, v3

    move v10, v9

    goto :goto_4

    :cond_7
    move v10, p1

    move v9, v3

    :goto_4
    const/4 p1, 0x3

    .line 95
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "page = %d, totalPage = %d, resultSize = %d"

    invoke-static {v1, v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v5, p0, Lbbj$1;->g:Lbbj;

    iget-object v6, p0, Lbbj$1;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-boolean v7, p0, Lbbj$1;->b:Z

    iget v11, p0, Lbbj$1;->f:I

    invoke-virtual/range {v5 .. v11}, Lbbj;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZLjava/util/List;III)V

    return-void
.end method
