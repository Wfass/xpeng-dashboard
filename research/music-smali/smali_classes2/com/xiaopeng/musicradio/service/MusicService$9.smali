.class Lcom/xiaopeng/musicradio/service/MusicService$9;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->playMusicHistoryCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$9;->a:Lcom/xiaopeng/musicradio/service/MusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 603
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    invoke-virtual {v0}, Lazt;->b()Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->f()Ljava/util/List;

    move-result-object v0

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 606
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 607
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 608
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 609
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    const-string v5, "local_usb_prefix_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 612
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 613
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_2
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$9$1;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/service/MusicService$9$1;-><init>(Lcom/xiaopeng/musicradio/service/MusicService$9;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
