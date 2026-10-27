.class Lcom/nforetek/bt/aidl/d$a$a;
.super Ljava/lang/Object;
.source "UiCallbackGattServer.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v2
.end method

.method public a(IILandroid/os/ParcelUuid;)V
    .locals 3

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 355
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {p3, v0, p1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :goto_0
    iget-object p2, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x3

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw p1
.end method

.method public a(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 3

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 424
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 428
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_1

    .line 431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {p6, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p7, :cond_2

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {p7, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 442
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    :goto_2
    iget-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x5

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public a(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 3

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 527
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 531
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_1

    .line 534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {p6, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 538
    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p7, :cond_2

    .line 541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    invoke-virtual {p7, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 545
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz p8, :cond_3

    .line 548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {p8, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 552
    :cond_3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    :goto_3
    iget-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x7

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw p1
.end method

.method public a(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 3

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 591
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, p2

    .line 592
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p7, :cond_2

    .line 595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {p7, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 599
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz p8, :cond_3

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    invoke-virtual {p8, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 606
    :cond_3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-eqz p9, :cond_4

    .line 609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    invoke-virtual {p9, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 613
    :cond_4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    :goto_4
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 616
    iget-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/16 p3, 0x8

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw p1
.end method

.method public a(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 3

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 480
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, p2

    .line 481
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p7, :cond_2

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {p7, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 488
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz p8, :cond_3

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-virtual {p8, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 495
    :cond_3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    :goto_3
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 498
    iget-object p1, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x6

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    throw p1
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 3

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 644
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object p2, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/16 p3, 0x9

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(IILandroid/os/ParcelUuid;)V
    .locals 3

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {p3, v0, p1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    :goto_0
    iget-object p2, p0, Lcom/nforetek/bt/aidl/d$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x4

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw p1
.end method
