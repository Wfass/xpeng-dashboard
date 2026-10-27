.class Lcom/xiaopeng/musicradio/model/music/a$1$1;
.super Ljava/lang/Object;
.source "AbsDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/a$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/a$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 303
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbsDataProvider"

    const-string v1, "run: play is not music"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget v0, v0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    if-ltz v0, :cond_8

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget v0, v0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "local_usb_prefix_"

    if-ge v0, v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/model/music/a;->a(Lcom/xiaopeng/musicradio/model/music/a;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_1

    .line 314
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/a;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 316
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbub$a;->music_no_cache_change_cache_music:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 323
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget v1, v1, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    if-ge v0, v1, :cond_8

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/model/music/a;->a(Lcom/xiaopeng/musicradio/model/music/a;I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 327
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_7

    .line 329
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 331
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbub$a;->music_no_cache_change_cache_music:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a$1$1;->b:Lcom/xiaopeng/musicradio/model/music/a$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/a$1;->a:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/a;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method
