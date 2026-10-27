.class public abstract Lcom/xiaopeng/b/b/a$a;
.super Landroid/os/Binder;
.source "IBtGeneralControlService.java"

# interfaces
.implements Lcom/xiaopeng/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/b/a$a$a;
    }
.end annotation


# direct methods
.method public static f(Landroid/os/IBinder;)Lcom/xiaopeng/b/b/a;
    .locals 2

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/b/a;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/xiaopeng/b/b/a;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/b/a$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/b/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 632
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 623
    :pswitch_0
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    move v0, v1

    goto :goto_0

    .line 625
    :cond_0
    nop

    .line 626
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/b/b/a$a;->aU(Z)Z

    move-result p1

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    return v1

    .line 611
    :pswitch_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->g([BI)Z

    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    return v1

    .line 601
    :pswitch_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eT(Ljava/lang/String;)Z

    move-result p1

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    return v1

    .line 591
    :pswitch_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eS(Ljava/lang/String;)Z

    move-result p1

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    return v1

    .line 581
    :pswitch_4
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eR(Ljava/lang/String;)Z

    move-result p1

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    return v1

    .line 570
    :pswitch_5
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    return v1

    .line 560
    :pswitch_6
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    return v1

    .line 549
    :pswitch_7
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v1

    .line 540
    :pswitch_8
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eP(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    return v1

    .line 531
    :pswitch_9
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eO(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    return v1

    .line 514
    :pswitch_a
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 523
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/b/b/a$a;->a(Ljava/lang/String;I[BI)I

    move-result p1

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 527
    return v1

    .line 502
    :pswitch_b
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->A(Ljava/lang/String;I)Z

    move-result p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    return v1

    .line 487
    :pswitch_c
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 494
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/b/a$a;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result p1

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 498
    return v1

    .line 477
    :pswitch_d
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eN(Ljava/lang/String;)Z

    move-result p1

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    return v1

    .line 464
    :pswitch_e
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 469
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->d(Ljava/lang/String;[B)Z

    move-result p1

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    return v1

    .line 452
    :pswitch_f
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->an(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    return v1

    .line 440
    :pswitch_10
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->am(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    return v1

    .line 430
    :pswitch_11
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eM(Ljava/lang/String;)Z

    move-result p1

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    return v1

    .line 420
    :pswitch_12
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eL(Ljava/lang/String;)Z

    move-result p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    return v1

    .line 408
    :pswitch_13
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->al(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    return v1

    .line 394
    :pswitch_14
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 401
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/b/a$a;->g(Ljava/lang/String;II)Z

    move-result p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    return v1

    .line 380
    :pswitch_15
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 387
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/b/a$a;->f(Ljava/lang/String;II)Z

    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v1

    .line 350
    :pswitch_16
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    if-gez v0, :cond_1

    .line 358
    nop

    .line 364
    move-object v0, v2

    goto :goto_1

    .line 361
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    .line 364
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 365
    if-gez p2, :cond_2

    .line 366
    goto :goto_2

    .line 369
    :cond_2
    new-array v2, p2, [Ljava/lang/String;

    .line 371
    :goto_2
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/xiaopeng/b/b/a$a;->a(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 376
    return v1

    .line 340
    :pswitch_17
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eK(Ljava/lang/String;)Z

    move-result p1

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v1

    .line 326
    :pswitch_18
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 333
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/b/a$a;->e(Ljava/lang/String;II)Z

    move-result p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return v1

    .line 280
    :pswitch_19
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    if-gez p1, :cond_3

    .line 286
    nop

    .line 292
    move-object p1, v2

    goto :goto_3

    .line 289
    :cond_3
    new-array p1, p1, [I

    .line 292
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 293
    if-gez p4, :cond_4

    .line 294
    nop

    .line 300
    move-object p4, v2

    goto :goto_4

    .line 297
    :cond_4
    new-array p4, p4, [Ljava/lang/String;

    .line 300
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    if-gez v0, :cond_5

    .line 302
    nop

    .line 308
    move-object v0, v2

    goto :goto_5

    .line 305
    :cond_5
    new-array v0, v0, [Ljava/lang/String;

    .line 308
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 309
    if-gez p2, :cond_6

    .line 310
    goto :goto_6

    .line 313
    :cond_6
    new-array v2, p2, [I

    .line 315
    :goto_6
    move-object v3, p0

    move-object v5, p1

    move-object v6, p4

    move-object v7, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/b/b/a$a;->a(Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p2

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 319
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    return v1

    .line 266
    :pswitch_1a
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    .line 273
    move v0, v1

    goto :goto_7

    .line 272
    :cond_7
    nop

    .line 273
    :goto_7
    invoke-virtual {p0, p1, p4, v0}, Lcom/xiaopeng/b/b/a$a;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v1

    .line 250
    :pswitch_1b
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    .line 259
    move v0, v1

    goto :goto_8

    .line 258
    :cond_8
    nop

    .line 259
    :goto_8
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/xiaopeng/b/b/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return v1

    .line 238
    :pswitch_1c
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->ak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return v1

    .line 222
    :pswitch_1d
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 231
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/b/b/a$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return v1

    .line 212
    :pswitch_1e
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eJ(Ljava/lang/String;)Z

    move-result p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return v1

    .line 203
    :pswitch_1f
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eI(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v1

    .line 194
    :pswitch_20
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eH(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v1

    .line 184
    :pswitch_21
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eG(Ljava/lang/String;)Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v1

    .line 174
    :pswitch_22
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eF(Ljava/lang/String;)Z

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v1

    .line 164
    :pswitch_23
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eE(Ljava/lang/String;)Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v1

    .line 152
    :pswitch_24
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->z(Ljava/lang/String;I)Z

    move-result p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v1

    .line 142
    :pswitch_25
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eD(Ljava/lang/String;)Z

    move-result p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v1

    .line 130
    :pswitch_26
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->aj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 120
    :pswitch_27
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 110
    :pswitch_28
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 98
    :pswitch_29
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/a$a;->ai(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v1

    .line 88
    :pswitch_2a
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->eA(Ljava/lang/String;)I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    .line 79
    :pswitch_2b
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->ez(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v1

    .line 70
    :pswitch_2c
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->ey(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1

    .line 61
    :pswitch_2d
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/b/b/b$a;->g(Landroid/os/IBinder;)Lcom/xiaopeng/b/b/b;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->b(Lcom/xiaopeng/b/b/b;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v1

    .line 52
    :pswitch_2e
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/b/b/b$a;->g(Landroid/os/IBinder;)Lcom/xiaopeng/b/b/b;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/b/a$a;->a(Lcom/xiaopeng/b/b/b;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v1

    .line 47
    :cond_9
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
