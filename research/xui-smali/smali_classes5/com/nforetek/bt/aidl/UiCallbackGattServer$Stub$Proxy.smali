.class Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiCallbackGattServer.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackGattServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 286
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 293
    const-string v0, "com.nforetek.bt.aidl.UiCallbackGattServer"

    return-object v0
.end method

.method public onGattServerCharacteristicReadRequest(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    .line 431
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {p6, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    :goto_0
    if-eqz p7, :cond_1

    .line 438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {p7, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    :goto_1
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    nop

    .line 451
    return-void

    .line 448
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    throw v2
.end method

.method public onGattServerCharacteristicWriteRequest(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "srvcType"    # I
    .param p7, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p8, "charUuid"    # Landroid/os/ParcelUuid;
    .param p9, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    .line 484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {p7, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :goto_0
    if-eqz p8, :cond_1

    .line 491
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-virtual {p8, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    :goto_1
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 498
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    nop

    .line 505
    return-void

    .line 502
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    throw v2
.end method

.method public onGattServerDescriptorReadRequest(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    .line 534
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {p6, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    :goto_0
    if-eqz p7, :cond_1

    .line 541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    invoke-virtual {p7, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    :goto_1
    if-eqz p8, :cond_2

    .line 548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {p8, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 552
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    :goto_2
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 558
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v2
.end method

.method public onGattServerDescriptorWriteRequest(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "isPrep"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "srvcType"    # I
    .param p7, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p8, "charUuid"    # Landroid/os/ParcelUuid;
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    .line 595
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {p7, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    :goto_0
    if-eqz p8, :cond_1

    .line 602
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    invoke-virtual {p8, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 606
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    :goto_1
    if-eqz p9, :cond_2

    .line 609
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    invoke-virtual {p9, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 613
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 616
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    nop

    .line 623
    return-void

    .line 620
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v2
.end method

.method public onGattServerExecuteWrite(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "execute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 652
    return-void

    .line 649
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v2
.end method

.method public onGattServerServiceAdded(IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 359
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :goto_0
    iget-object v3, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    nop

    .line 372
    return-void

    .line 369
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw v2
.end method

.method public onGattServerServiceDeleted(IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 390
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    :goto_0
    iget-object v3, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    nop

    .line 403
    return-void

    .line 400
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw v2
.end method

.method public onGattServerStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    nop

    .line 341
    return-void

    .line 338
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v2
.end method

.method public onGattServiceReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    .line 310
    nop

    .line 311
    return-void

    .line 308
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v2
.end method
