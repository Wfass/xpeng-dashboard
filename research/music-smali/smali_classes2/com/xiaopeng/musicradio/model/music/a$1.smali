.class Lcom/xiaopeng/musicradio/model/music/a$1;
.super Ljava/lang/Object;
.source "AbsDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/music/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/a;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AbsDataProvider"

    const-string v1, "start check play cache"

    .line 278
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 289
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 290
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_usb_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    .line 293
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    new-instance v1, Lcom/xiaopeng/musicradio/model/music/a$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/music/a$1$1;-><init>(Lcom/xiaopeng/musicradio/model/music/a$1;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
