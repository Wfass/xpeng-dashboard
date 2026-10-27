.class public abstract Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;
.super Landroid/os/Binder;
.source "IBtA2DPControlService.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

.field static final TRANSACTION_addToPlayingQueue:I = 0x1c

.field static final TRANSACTION_controlAVRCPEx:I = 0x9

.field static final TRANSACTION_getAlbumName:I = 0xd

.field static final TRANSACTION_getArtistName:I = 0xc

.field static final TRANSACTION_getBrowsingSupportFeature:I = 0x1e

.field static final TRANSACTION_getMediaInfoEx:I = 0xf

.field static final TRANSACTION_getPlayStatus:I = 0x10

.field static final TRANSACTION_getPlayerSettings:I = 0x11

.field static final TRANSACTION_getSongName:I = 0xb

.field static final TRANSACTION_getSongTimes:I = 0xe

.field static final TRANSACTION_getStreamMode:I = 0x20

.field static final TRANSACTION_isA2DPSupportMetaData:I = 0xa

.field static final TRANSACTION_isBrowsingBusy:I = 0x1d

.field static final TRANSACTION_isCurrentA2DPPlaying:I = 0x3

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_playBrowsingItem:I = 0x1b

.field static final TRANSACTION_playNext:I = 0x7

.field static final TRANSACTION_playPrevious:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_retrievePlayerSettings:I = 0x12

.field static final TRANSACTION_retrievePlayerSupported:I = 0x14

.field static final TRANSACTION_setPlayerSettings:I = 0x13

.field static final TRANSACTION_setStreamMode:I = 0x1f

.field static final TRANSACTION_setStreamVolume:I = 0x21

.field static final TRANSACTION_startBrowsingElement:I = 0x15

.field static final TRANSACTION_startBrowsingElementEx:I = 0x16

.field static final TRANSACTION_startBrowsingSearch:I = 0x17

.field static final TRANSACTION_startBrowsingSearchEx:I = 0x18

.field static final TRANSACTION_startPlayingList:I = 0x19

.field static final TRANSACTION_startPlayingListEx:I = 0x1a

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 41
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_1

    packed-switch v8, :pswitch_data_0

    .line 449
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 438
    :pswitch_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 443
    .local v1, "_arg1":F
    invoke-virtual {v7, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->setStreamVolume(Ljava/lang/String;F)Z

    move-result v2

    .line 444
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    return v11

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":F
    .end local v2    # "_result":Z
    :pswitch_1
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getStreamMode(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v11

    .line 416
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->setStreamMode(Ljava/lang/String;I)Z

    move-result v2

    .line 422
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    return v11

    .line 406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getBrowsingSupportFeature(Ljava/lang/String;)Z

    move-result v1

    .line 410
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    return v11

    .line 396
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->isBrowsingBusy(Ljava/lang/String;)Z

    move-result v1

    .line 400
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v11

    .line 382
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->addToPlayingQueue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 390
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v11

    .line 368
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->playBrowsingItem(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 376
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v11

    .line 353
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startPlayingListEx(Ljava/lang/String;III)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    return v11

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_8
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startPlayingList(Ljava/lang/String;II)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v11

    .line 321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_9
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 329
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 331
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 333
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 334
    .local v17, "_arg5":I
    move-object v0, v7

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startBrowsingSearchEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v11

    .line 304
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_a
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 312
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 314
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 315
    .local v15, "_arg4":I
    move-object v0, v7

    move-object v1, v6

    move-object v2, v12

    move-object v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startBrowsingSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v11

    .line 287
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_b
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 293
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 295
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 297
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 298
    .restart local v15    # "_arg4":I
    move-object v0, v7

    move-object v1, v6

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startBrowsingElementEx(Ljava/lang/String;Ljava/lang/String;III)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v11

    .line 272
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_c
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->startBrowsingElement(Ljava/lang/String;Ljava/lang/String;II)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    return v11

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_d
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .local v2, "_arg2_length":I
    if-gez v2, :cond_0

    .line 257
    const/4 v3, 0x0

    .local v3, "_arg2":[I
    goto :goto_0

    .line 260
    .end local v3    # "_arg2":[I
    :cond_0
    new-array v3, v2, [I

    .line 263
    .restart local v3    # "_arg2":[I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    .local v4, "_arg3":I
    invoke-virtual {v7, v0, v1, v3, v4}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->retrievePlayerSupported(Ljava/lang/String;I[II)Z

    move-result v5

    .line 265
    .local v5, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 268
    return v11

    .line 235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_e
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->setPlayerSettings(Ljava/lang/String;II)Z

    move-result v3

    .line 243
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return v11

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_f
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->retrievePlayerSettings(Ljava/lang/String;I)Z

    move-result v2

    .line 229
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v11

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_10
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getPlayerSettings(Ljava/lang/String;)Z

    move-result v1

    .line 217
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v11

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_11
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getPlayStatus(Ljava/lang/String;)Z

    move-result v1

    .line 207
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v11

    .line 192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_12
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getMediaInfoEx(Ljava/lang/String;I)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v11

    .line 182
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getSongTimes(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return v11

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_14
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v11

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_15
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v11

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_16
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v11

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->isA2DPSupportMetaData(Ljava/lang/String;)Z

    move-result v1

    .line 146
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v11

    .line 128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_18
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->controlAVRCPEx(Ljava/lang/String;II)Z

    move-result v3

    .line 136
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v11

    .line 118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_19
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->playPrevious(Ljava/lang/String;)Z

    move-result v1

    .line 122
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v11

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1a
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->playNext(Ljava/lang/String;)Z

    move-result v1

    .line 112
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v11

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1b
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->pause(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v11

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1c
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->stop(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v11

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1d
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->play(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v11

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->isCurrentA2DPPlaying(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v11

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1f
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v11

    .line 50
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;
    :pswitch_20
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

    move-result-object v0

    .line 53
    .restart local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService$Stub;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v11

    .line 45
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;
    :cond_1
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
