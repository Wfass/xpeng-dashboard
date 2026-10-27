.class Lcom/xiaopeng/musicradio/model/dui/e$2$1;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e$2;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e$2;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getSongList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const-string v3, "\u641c\u7d22"

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 633
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayBy(I)V

    .line 634
    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$2$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 643
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getSongList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const-string v5, ""

    .line 645
    invoke-static {v4, v2, v5}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v4

    .line 646
    invoke-virtual {v4, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayBy(I)V

    .line 647
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    :cond_1
    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$2$1$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e$2$1$2;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$2$1;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
