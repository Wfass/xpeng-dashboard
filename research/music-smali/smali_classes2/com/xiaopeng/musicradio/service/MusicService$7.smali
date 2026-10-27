.class Lcom/xiaopeng/musicradio/service/MusicService$7;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->isHasHistoryCache(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/r;

.field final synthetic b:Landroidx/lifecycle/s;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->c:Lcom/xiaopeng/musicradio/service/MusicService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->b:Landroidx/lifecycle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 564
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    invoke-virtual {v0}, Lazt;->b()Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->f()Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 566
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 567
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 568
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 569
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v5

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->c:Lcom/xiaopeng/musicradio/service/MusicService;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->b:Landroidx/lifecycle/s;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/MusicService;->a(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    return-void

    .line 573
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v5, "local_usb_prefix_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->c:Lcom/xiaopeng/musicradio/service/MusicService;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->b:Landroidx/lifecycle/s;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/MusicService;->a(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    return-void

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->c:Lcom/xiaopeng/musicradio/service/MusicService;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->a:Landroidx/lifecycle/r;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicService$7;->b:Landroidx/lifecycle/s;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/MusicService;->a(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    return-void
.end method
