.class Lcom/xiaopeng/musicradio/model/music/n$2$1;
.super Ljava/lang/Object;
.source "UserDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/n$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/n$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/n$2;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/n;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_play_state"

    .line 362
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;)I

    move-result v1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " playState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserDataProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-boolean v2, v2, Lcom/xiaopeng/musicradio/model/music/n$2;->a:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 365
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    .line 367
    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 368
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v5

    :cond_3
    if-nez v2, :cond_5

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 376
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v5

    :cond_5
    if-nez v2, :cond_6

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$2$1;->a:Lcom/xiaopeng/musicradio/model/music/n$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 386
    :cond_6
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    if-eqz v1, :cond_7

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "music"

    .line 390
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "continue"

    .line 391
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-static {v0}, Lbrw;->d(Ljava/util/Map;)V

    .line 394
    :cond_7
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
