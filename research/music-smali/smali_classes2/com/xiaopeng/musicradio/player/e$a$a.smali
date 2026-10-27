.class Lcom/xiaopeng/musicradio/player/e$a$a;
.super Ljava/lang/Object;
.source "IPlayerServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaopeng/musicradio/player/e;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 445
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    throw p1
.end method

.method public a(IF)V
    .locals 5

    .line 702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 705
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 708
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 710
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 713
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    throw p1
.end method

.method public a(IFF)V
    .locals 5

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 604
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 605
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 607
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/e;->a(IFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 610
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    throw p1
.end method

.method public a(II)V
    .locals 5

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 586
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 589
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    throw p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 5

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 682
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 690
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 693
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    throw p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 5

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    throw p1
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 5

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 515
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 518
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v3, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 521
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 524
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    throw p1
.end method

.method public a(ILjava/lang/String;ZZ)V
    .locals 5

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 539
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 540
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 543
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 546
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    throw p1
.end method

.method public a(ILjava/lang/String;ZZZ)V
    .locals 9

    .line 555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 558
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 561
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 562
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 563
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 565
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 566
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 569
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    throw p1
.end method

.method public a(Lcom/xiaopeng/musicradio/player/c;)V
    .locals 5

    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 935
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/player/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 936
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 938
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->a(Lcom/xiaopeng/musicradio/player/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 941
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 946
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(I)V
    .locals 5

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 457
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 464
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw p1
.end method

.method public b(IF)V
    .locals 5

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 725
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 728
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 730
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->b(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 733
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw p1
.end method

.method public b(ILjava/lang/String;)Z
    .locals 5

    .line 742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 746
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 751
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->b(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 753
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 757
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw p1
.end method

.method public c(I)V
    .locals 5

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 480
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 483
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    throw p1
.end method

.method public c(ILjava/lang/String;)V
    .locals 5

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 893
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 898
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->c(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 901
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 906
    throw p1
.end method

.method public d(I)V
    .locals 5

    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 622
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 626
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 629
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    throw p1
.end method

.method public e(I)V
    .locals 5

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 645
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 648
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw p1
.end method

.method public f(I)V
    .locals 5

    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 660
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 663
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 664
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 667
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    throw p1
.end method

.method public g(I)Z
    .locals 5

    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 768
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 772
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->g(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 774
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 778
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    throw p1
.end method

.method public h(I)I
    .locals 5

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 793
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->h(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 795
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    throw p1
.end method

.method public i(I)I
    .locals 5

    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 810
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 814
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->i(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    throw p1
.end method

.method public j(I)Z
    .locals 5

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 835
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->j(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 837
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 841
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 843
    throw p1
.end method

.method public k(I)I
    .locals 5

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 852
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 856
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->k(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 858
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    throw p1
.end method

.method public l(I)I
    .locals 5

    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 873
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 877
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->l(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 879
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    throw p1
.end method

.method public m(I)I
    .locals 5

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 914
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/e$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 917
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 918
    invoke-static {}, Lcom/xiaopeng/musicradio/player/e$a;->a()Lcom/xiaopeng/musicradio/player/e;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/player/e;->m(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 920
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    throw p1
.end method
