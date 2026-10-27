.class Lcom/xiaopeng/musicradio/player/m$8;
.super Lcom/xiaopeng/musicradio/player/c$a;
.source "PlayerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeLineChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onTimeLineChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 5

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayState: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlayerClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter onPlayState: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;IIZ)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 407
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetData: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 442
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->onSetData(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 433
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/xiaopeng/musicradio/player/l;->onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLoading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->loadingChange(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;I)V
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 399
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->onPlayError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->onAudioSessionId(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d(ILjava/lang/String;I)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$8;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 458
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/musicradio/player/l;->onAudioInputFormatChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 465
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/c$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "PlayerClient"

    const-string p3, "onTransact: "

    .line 467
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    throw p1
.end method
