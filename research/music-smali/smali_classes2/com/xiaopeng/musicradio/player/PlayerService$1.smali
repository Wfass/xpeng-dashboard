.class Lcom/xiaopeng/musicradio/player/PlayerService$1;
.super Lcom/xiaopeng/musicradio/player/e$a;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/PlayerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/PlayerService;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "start: "

    const-string v1, "PlayerService"

    .line 32
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lbld;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    throw p1
.end method

.method public a(IF)V
    .locals 3

    const-string v0, "PlayerService"

    .line 386
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaySpeed: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1, p2}, Lbld;->setPlaySpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "setPlaySpeed: "

    .line 392
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    throw p1
.end method

.method public a(IFF)V
    .locals 1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1, p2, p3}, Lbld;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "PlayerService"

    const-string p3, "setVolume: "

    .line 156
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    throw p1
.end method

.method public a(II)V
    .locals 3

    const-string v0, "PlayerService"

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " second = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, p2}, Lbld;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "seekTo: "

    .line 143
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    throw p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "PlayerService"

    .line 355
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1, p2}, Lbld;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "setData: "

    .line 361
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    throw p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "PlayerService"

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, p2}, Lbld;->prepareData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "prepare: "

    .line 80
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    throw p1
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 3

    const-string v0, "PlayerService"

    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNewPlay: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p2, p3}, Lbld;->prepareData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "prepareNewPlay: "

    .line 94
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    throw p1
.end method

.method public a(ILjava/lang/String;ZZ)V
    .locals 3

    const-string v0, "PlayerService"

    .line 102
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNewPlay: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1, p2, p3, p4}, Lbld;->prepareData(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "prepareUseCache: "

    .line 108
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    throw p1
.end method

.method public a(ILjava/lang/String;ZZZ)V
    .locals 3

    const-string v0, "PlayerService"

    .line 116
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNewPlay: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " playWhenReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2, p2}, Lbld;->wrapCache(Ljava/lang/String;)Lcom/xiaopeng/musicradio/player/o;

    move-result-object v1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1, v1}, Lbld;->setMeter(Lcom/xiaopeng/musicradio/player/o;)V

    .line 125
    invoke-virtual {p1, p2, p3, p4, p5}, Lbld;->prepareData(Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string p2, "preparePlayWhenReady: "

    .line 129
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    throw p1
.end method

.method public a(Lcom/xiaopeng/musicradio/player/c;)V
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClientInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;Lcom/xiaopeng/musicradio/player/c;)Lcom/xiaopeng/musicradio/player/c;

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->b(Lcom/xiaopeng/musicradio/player/PlayerService;)Lcom/xiaopeng/musicradio/player/g;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;)Lcom/xiaopeng/musicradio/player/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/player/g;->a(Lcom/xiaopeng/musicradio/player/c;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "startSeek: "

    const-string v1, "PlayerService"

    .line 46
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lbld;->startSeek()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    throw p1
.end method

.method public b(IF)V
    .locals 3

    const-string v0, "PlayerService"

    .line 164
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSonicVolume: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1, p2}, Lbld;->setSonicVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "setSonicVolume: "

    .line 170
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    throw p1
.end method

.method public b(ILjava/lang/String;)Z
    .locals 1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1, p2}, Lbld;->isCacheComplete(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "PlayerService"

    const-string v0, "isCacheComplete: "

    .line 299
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    throw p1
.end method

.method public c(I)V
    .locals 3

    const-string v0, "pause: "

    const-string v1, "PlayerService"

    .line 60
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lbld;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 66
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    throw p1
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p1, p2}, Lbld;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "PlayerService"

    const-string v0, "removeCache: "

    .line 312
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    throw p1
.end method

.method public d(I)V
    .locals 3

    const-string v0, "stop: "

    const-string v1, "PlayerService"

    .line 178
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lbld;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 184
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    throw p1
.end method

.method public e(I)V
    .locals 3

    const-string v0, "reset: "

    const-string v1, "PlayerService"

    .line 192
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Lbld;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 198
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    throw p1
.end method

.method public f(I)V
    .locals 3

    const-string v0, "release: "

    const-string v1, "PlayerService"

    .line 206
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Lbld;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 212
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    throw p1
.end method

.method public g(I)Z
    .locals 3

    const-string v0, "isIdle: "

    const-string v1, "PlayerService"

    .line 221
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lbld;->isIdle()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 228
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    throw p1
.end method

.method public h(I)I
    .locals 2

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Lbld;->getCurrentPosition()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "getCurrentPosition: "

    .line 242
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    throw p1
.end method

.method public i(I)I
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lbld;->getSecondPosition()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "getSecondPosition: "

    .line 256
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    throw p1
.end method

.method public j(I)Z
    .locals 2

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Lbld;->isPlaying()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "isPlaying: "

    .line 271
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    throw p1
.end method

.method public k(I)I
    .locals 2

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Lbld;->getDuration()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "getDuration: "

    .line 285
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    throw p1
.end method

.method public l(I)I
    .locals 2

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Lbld;->getPlaybackState()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "getPlaybackState: "

    .line 340
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    throw p1
.end method

.method public m(I)I
    .locals 2

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService$1;->a:Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Lbld;->getSessionId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerService"

    const-string v1, "getPlaybackState: "

    .line 326
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 369
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/e$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "PlayerService"

    const-string p3, "onTransact: "

    .line 371
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    throw p1
.end method
