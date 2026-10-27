.class Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;
.super Lano;
.source "XBluetoothNFManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-direct {p0}, Lano;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(I)I

    move-result p1

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(III)V

    :cond_0
    return-void
.end method

.method public a(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 4

    .line 333
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xpbluetooth refreshPairedDevice :"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lapl;->a(Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 336
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 337
    aget-object v1, p2, p4

    invoke-virtual {v0, v1}, Lapj;->a(Ljava/lang/String;)V

    .line 338
    aget-object v1, p3, p4

    invoke-virtual {v0, v1}, Lapj;->b(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    aget-byte v2, p5, p4

    aget-object v3, p2, p4

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(Lcom/xiaopeng/lib_xpbt/bluetooth/e;BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lapj;->a(I)V

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->g:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 350
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p2}, Lapj;->b(Ljava/lang/String;)V

    .line 352
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(Lcom/xiaopeng/lib_xpbt/bluetooth/e;BLjava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lapj;->a(I)V

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 382
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p2}, Lapj;->b(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->b(I)I

    move-result p2

    iget-object p3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {p3, p4}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->b(I)I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;III)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 397
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c(I)I

    move-result p2

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c(I)I

    move-result p3

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;III)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 407
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c(I)I

    move-result p2

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c(I)I

    move-result p3

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;III)V

    :cond_0
    return-void
.end method
