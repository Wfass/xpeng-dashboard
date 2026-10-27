.class Lbbs$1;
.super Ljava/lang/Object;
.source "ReplayMusicHandler.java"

# interfaces
.implements Lbbo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbs;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbo$a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lbbs;


# direct methods
.method constructor <init>(Lbbs;ILcom/xiaopeng/musicradio/bean/ListSignBean;IIZI)V
    .locals 0

    .line 34
    iput-object p1, p0, Lbbs$1;->g:Lbbs;

    iput p2, p0, Lbbs$1;->a:I

    iput-object p3, p0, Lbbs$1;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iput p4, p0, Lbbs$1;->c:I

    iput p5, p0, Lbbs$1;->d:I

    iput-boolean p6, p0, Lbbs$1;->e:Z

    iput p7, p0, Lbbs$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    invoke-virtual {p0, p1}, Lbbs$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;)I

    move-result p1

    return p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lbdc;->a()Lbdc;

    move-result-object v0

    iget v1, p0, Lbbs$1;->a:I

    iget-object v2, p0, Lbbs$1;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lbdc;->a(ILjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 104
    iget-object v0, p0, Lbbs$1;->g:Lbbs;

    iget-object v0, v0, Lbbs;->a:Laxz;

    iget-boolean v1, p0, Lbbs$1;->e:Z

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lbub$a;->server_error_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v3, v2}, Laxz;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;I)V
    .locals 7

    const-string p1, "ReplayMusicHandler"

    const-string v0, "preloadPageReq response responseFirstPageData"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 94
    iget v0, p0, Lbbs$1;->a:I

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 96
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lbbs$1;->g:Lbbs;

    iget-object v1, p1, Lbbs;->a:Laxz;

    iget-boolean v2, p0, Lbbs$1;->e:Z

    iget v3, p0, Lbbs$1;->d:I

    iget v5, p0, Lbbs$1;->f:I

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V
    .locals 0

    .line 34
    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    invoke-virtual {p0, p1, p2, p3}, Lbbs$1;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ReplayMusicHandler"

    const-string v1, "preloadPageReq response responsePageData"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    .line 53
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget p1, p0, Lbbs$1;->c:I

    .line 60
    iget v2, p0, Lbbs$1;->d:I

    .line 62
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 66
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 68
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responsePageData: page = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalPage = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    .line 75
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean$DataBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v2

    iget v3, p0, Lbbs$1;->d:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_1

    .line 80
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    move v7, v6

    goto :goto_3

    :cond_6
    move v7, p1

    move v6, v2

    :goto_3
    const/4 p1, 0x3

    .line 85
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "page = %d, totalPage = %d, resultSize = %d"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lbbs$1;->g:Lbbs;

    iget-object v4, p1, Lbbs;->a:Laxz;

    iget-boolean v5, p0, Lbbs$1;->e:Z

    iget v8, p0, Lbbs$1;->f:I

    invoke-virtual/range {v4 .. v9}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method
