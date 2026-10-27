.class public abstract Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;
.super Landroid/os/Binder;
.source "IMonitor.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/IMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/IMonitor$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p0, p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alibaba/mtl/appmonitor/IMonitor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/mtl/appmonitor/IMonitor;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/alibaba/mtl/appmonitor/IMonitor;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub$a;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 523
    :pswitch_0
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/alibaba/mtl/appmonitor/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/mtl/appmonitor/Transaction;

    goto :goto_0

    .line 528
    :cond_0
    nop

    .line 531
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->transaction_end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    return v1

    .line 509
    :pswitch_1
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    sget-object v0, Lcom/alibaba/mtl/appmonitor/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/mtl/appmonitor/Transaction;

    goto :goto_1

    .line 514
    :cond_1
    nop

    .line 517
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->transaction_begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    return v1

    .line 486
    :pswitch_2
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    sget-object v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 498
    move-object v6, v0

    goto :goto_2

    .line 495
    :cond_2
    nop

    .line 498
    move-object v6, v2

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    sget-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 503
    :goto_3
    move-object v7, v2

    goto :goto_4

    .line 501
    :cond_3
    goto :goto_3

    .line 503
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 504
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_commit3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v1

    .line 467
    :pswitch_3
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    sget-object v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 479
    :goto_5
    move-object v6, v2

    goto :goto_6

    .line 476
    :cond_4
    goto :goto_5

    .line 479
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    .line 481
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_commit2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    return v1

    .line 454
    :pswitch_4
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 462
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_commit1(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v1

    .line 443
    :pswitch_5
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    return v1

    .line 435
    :pswitch_6
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 438
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_setSampling(I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    return v1

    .line 427
    :pswitch_7
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_setStatisticsInterval(I)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    return v1

    .line 415
    :pswitch_8
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v1

    .line 403
    :pswitch_9
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->stat_begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    return v1

    .line 386
    :pswitch_a
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 398
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_commitFail2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    return v1

    .line 371
    :pswitch_b
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 381
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_commitFail1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v1

    .line 358
    :pswitch_c
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 366
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_commitSuccess2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    return v1

    .line 347
    :pswitch_d
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 353
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_commitSuccess1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    return v1

    .line 336
    :pswitch_e
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return v1

    .line 328
    :pswitch_f
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_setSampling(I)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    return v1

    .line 320
    :pswitch_10
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->alarm_setStatisticsInterval(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    return v1

    .line 308
    :pswitch_11
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 315
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->offlinecounter_commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v1

    .line 297
    :pswitch_12
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->offlinecounter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return v1

    .line 289
    :pswitch_13
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->offlinecounter_setSampling(I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    return v1

    .line 281
    :pswitch_14
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->offlinecounter_setStatisticsInterval(I)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    return v1

    .line 266
    :pswitch_15
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 276
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->counter_commit2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    return v1

    .line 253
    :pswitch_16
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 261
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->counter_commit1(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    return v1

    .line 242
    :pswitch_17
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v1

    .line 234
    :pswitch_18
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->counter_setSampling(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v1

    .line 226
    :pswitch_19
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->counter_setStatisticsInterval(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v1

    .line 220
    :pswitch_1a
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->destroy()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v1

    .line 214
    :pswitch_1b
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->turnOffRealTimeDebug()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v1

    .line 205
    :pswitch_1c
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 208
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v1

    .line 181
    :pswitch_1d
    const-string v3, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    sget-object v3, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 193
    move-object v7, v3

    goto :goto_7

    .line 190
    :cond_5
    nop

    .line 193
    move-object v7, v2

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    sget-object v2, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 199
    :goto_8
    move-object v8, v2

    goto :goto_9

    .line 196
    :cond_6
    goto :goto_8

    .line 199
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 200
    move v9, v1

    goto :goto_a

    .line 199
    :cond_7
    nop

    .line 200
    move v9, v0

    :goto_a
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->register4(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v1

    .line 159
    :pswitch_1e
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 166
    sget-object v4, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_b

    .line 168
    :cond_8
    nop

    .line 171
    move-object v4, v2

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 172
    sget-object v2, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_c

    .line 174
    :cond_9
    nop

    .line 176
    :goto_c
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->register3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v1

    .line 141
    :pswitch_1f
    const-string v3, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 148
    sget-object v2, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_d

    .line 150
    :cond_a
    nop

    .line 153
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 154
    move v0, v1

    goto :goto_e

    .line 153
    :cond_b
    nop

    .line 154
    :goto_e
    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->register2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v1

    .line 125
    :pswitch_20
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 132
    sget-object v2, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_f

    .line 134
    :cond_c
    nop

    .line 136
    :goto_f
    invoke-virtual {p0, v0, v3, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->register1(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v1

    .line 115
    :pswitch_21
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->setStatisticsInterval2(II)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v1

    .line 107
    :pswitch_22
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->setStatisticsInterval1(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v1

    .line 99
    :pswitch_23
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->setSampling(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v1

    .line 93
    :pswitch_24
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->triggerUpload()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    .line 85
    :pswitch_25
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->setChannel(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v1

    .line 71
    :pswitch_26
    const-string v2, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 75
    move v0, v1

    goto :goto_10

    .line 73
    :cond_d
    nop

    .line 75
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v1

    .line 63
    :pswitch_27
    const-string v2, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 66
    move v0, v1

    goto :goto_11

    .line 65
    :cond_e
    nop

    .line 66
    :goto_11
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->enableLog(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v1

    .line 57
    :pswitch_28
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->init()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v1

    .line 53
    :cond_f
    const-string v0, "com.alibaba.mtl.appmonitor.IMonitor"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
