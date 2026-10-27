.class Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;
.super Ljava/lang/Object;
.source "SearchResultSongFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->updateHighlightWordsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object v1

    invoke-virtual {v1}, Lbnv;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 191
    sget v3, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 192
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v7

    invoke-virtual {v7}, Lbnz;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 191
    invoke-static {v3, v4, v6}, Lcom/xiaopeng/musicradio/utils/bq;->a(ILjava/lang/String;[Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHighlightSongName(Landroid/text/SpannableStringBuilder;)V

    .line 193
    sget v3, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 194
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v6

    invoke-virtual {v6}, Lbnz;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 193
    invoke-static {v3, v4, v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(ILjava/lang/String;[Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHightlightSinger(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 196
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;-><init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
