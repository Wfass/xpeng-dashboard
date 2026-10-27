.class Laym$16;
.super Lann;
.source "BluetoothServiceNforeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laym;

.field private b:J


# direct methods
.method constructor <init>(Laym;)V
    .locals 2

    .line 314
    iput-object p1, p0, Laym$16;->a:Laym;

    invoke-direct {p0}, Lann;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 317
    iput-wide v0, p0, Laym$16;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "BluetoothMusicService"

    const-string v1, "Avrcp#onServiceReady() called"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(B)V
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onRegisterEventWatcherSuccess(): eventId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMusicService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onTrackChanged(): elementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMusicService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->j(Laym;)Z

    .line 460
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-virtual {p1}, Laym;->h()V

    return-void
.end method

.method public a(JJB)V
    .locals 2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onPlayStatusResponse(): songLen = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], songPos = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], state = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {p5}, Layn;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    .line 441
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Laym$16;->a:Laym;

    invoke-static {v0, p5}, Laym;->c(Laym;I)V

    .line 445
    iget-object p5, p0, Laym$16;->a:Laym;

    invoke-static {p5, p3, p4, p1, p2}, Laym;->a(Laym;JJ)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onStateChanged(): address = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], prevState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {p2}, Layn;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], newState = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {p3}, Layn;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMusicService"

    .line 321
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8c

    if-eq p3, p2, :cond_1

    const/16 p2, 0x91

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 326
    iget-object p3, p0, Laym$16;->a:Laym;

    invoke-static {p3}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f()V

    .line 328
    :cond_2
    iget-object p3, p0, Laym$16;->a:Laym;

    invoke-static {p3, p2, p1}, Laym;->c(Laym;ZLjava/lang/String;)V

    return-void
.end method

.method public a([I[Ljava/lang/String;)V
    .locals 7

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onElementAttributesPlayingResponse(): ids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", texts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    .line 333
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    const/4 v1, 0x0

    .line 338
    :goto_0
    array-length v2, p1

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 339
    aget v2, p1, v1

    .line 340
    aget-object v5, p2, v1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    const/4 v6, 0x7

    if-eq v2, v6, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 353
    :catch_0
    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 363
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Laym$16;->a:Laym;

    .line 364
    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 365
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 370
    :cond_5
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_b

    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_b

    .line 371
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 372
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 373
    :cond_6
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 378
    :cond_7
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 379
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Laym$16;->a:Laym;

    .line 380
    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 384
    :cond_8
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 385
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Laym$16;->a:Laym;

    .line 386
    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 390
    :cond_9
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 391
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 392
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 396
    :cond_a
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 397
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 398
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 404
    :cond_b
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    cmp-long p1, p1, v1

    if-gez p1, :cond_c

    .line 405
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 406
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Laym$16;->a:Laym;

    invoke-static {p2}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 410
    :cond_c
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    .line 411
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1, v0}, Laym;->a(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    const-wide/high16 p1, -0x8000000000000000L

    .line 412
    iput-wide p1, p0, Laym$16;->b:J

    :cond_d
    return-void
.end method

.method public b(B)V
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onRegisterEventWatcherFail(): eventId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMusicService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(J)V
    .locals 3

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onPlaybackPosChanged(): songPos = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Laym$16;->a:Laym;

    invoke-static {v0}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v1

    invoke-static {v0, p1, p2, v1, v2}, Laym;->a(Laym;JJ)V

    return-void
.end method

.method public c(B)V
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp#onPlaybackStatusChanged(): state = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {p1}, Layn;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    .line 450
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Laym$16;->a:Laym;

    invoke-static {v0, p1}, Laym;->c(Laym;I)V

    .line 453
    iget-object p1, p0, Laym$16;->a:Laym;

    invoke-static {p1}, Laym;->j(Laym;)Z

    return-void
.end method
