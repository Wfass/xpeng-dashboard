.class public abstract Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;
.super Landroid/os/Binder;
.source "IBtPhoneControlService.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

.field static final TRANSACTION_answerCall:I = 0x4

.field static final TRANSACTION_changeDownLoadFlag:I = 0x1e

.field static final TRANSACTION_deletePhote:I = 0x12

.field static final TRANSACTION_dialDTMF:I = 0x7

.field static final TRANSACTION_dialNumber:I = 0x6

.field static final TRANSACTION_getContacts:I = 0xe

.field static final TRANSACTION_getContactsByPBAP:I = 0x13

.field static final TRANSACTION_getMessage:I = 0x15

.field static final TRANSACTION_getMicMaxVolume:I = 0x1c

.field static final TRANSACTION_getMicVolume:I = 0x19

.field static final TRANSACTION_getMissCallCount:I = 0xd

.field static final TRANSACTION_getSpeakerMaxVolume:I = 0x1d

.field static final TRANSACTION_getSpeakerVolume:I = 0x1b

.field static final TRANSACTION_handleThreeWayCall:I = 0x8

.field static final TRANSACTION_hangUpCall:I = 0x5

.field static final TRANSACTION_isCurrentDownloading:I = 0x3

.field static final TRANSACTION_isForDownLoad:I = 0x20

.field static final TRANSACTION_isSupportTransferAudio:I = 0xc

.field static final TRANSACTION_queryCall:I = 0xa

.field static final TRANSACTION_reDial:I = 0x9

.field static final TRANSACTION_readBitmap:I = 0x11

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x17

.field static final TRANSACTION_setDownloadPBAttr:I = 0x10

.field static final TRANSACTION_setForDownLoad:I = 0x1f

.field static final TRANSACTION_setMicVolume:I = 0x18

.field static final TRANSACTION_setSpeakerVolume:I = 0x1a

.field static final TRANSACTION_transferAudio:I = 0xb

.field static final TRANSACTION_unRegisterContactsByPBAP:I = 0x14

.field static final TRANSACTION_unRegisterContactsCallback:I = 0xf

.field static final TRANSACTION_unRegisterSMSCallback:I = 0x16

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 41
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v10, v0, :cond_b

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 477
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 468
    :pswitch_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->isForDownLoad(Ljava/lang/String;)Z

    move-result v1

    .line 472
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    return v13

    .line 459
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->setForDownLoad(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v13

    .line 448
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v13

    nop

    .line 453
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual {v9, v1, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->changeDownLoadFlag(Ljava/lang/String;Z)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v13

    .line 438
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getSpeakerMaxVolume(Ljava/lang/String;)I

    move-result v1

    .line 442
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    return v13

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_4
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getMicMaxVolume(Ljava/lang/String;)I

    move-result v1

    .line 432
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v13

    .line 418
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_5
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getSpeakerVolume(Ljava/lang/String;)I

    move-result v1

    .line 422
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    return v13

    .line 406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_6
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->setSpeakerVolume(Ljava/lang/String;I)Z

    move-result v2

    .line 412
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    return v13

    .line 396
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getMicVolume(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v13

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_8
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->setMicVolume(Ljava/lang/String;I)Z

    move-result v2

    .line 390
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v13

    .line 370
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_9
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 378
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return v13

    .line 361
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->unRegisterSMSCallback(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    return v13

    .line 348
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v13

    nop

    .line 354
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .local v2, "_arg2":I
    invoke-virtual {v9, v1, v0, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getMessage(Ljava/lang/String;ZI)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    return v13

    .line 339
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_c
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->unRegisterContactsByPBAP(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    return v13

    .line 318
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 324
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 326
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 328
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 330
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 332
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 333
    .local v19, "_arg6":I
    move-object v0, v9

    move-object v1, v8

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getContactsByPBAP(Ljava/lang/String;IIIIII)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v13

    .line 306
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    :pswitch_e
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->deletePhote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 312
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return v13

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_f
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .local v4, "_arg3":I
    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->readBitmap(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 294
    .local v5, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v5, :cond_2

    .line 296
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    :goto_0
    return v13

    .line 272
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/graphics/Bitmap;
    :pswitch_10
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->setDownloadPBAttr(Ljava/lang/String;I)Z

    move-result v2

    .line 278
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return v13

    .line 263
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_11
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->unRegisterContactsCallback(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    return v13

    .line 240
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_12
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v13

    goto :goto_1

    :cond_3
    move v2, v0

    .line 246
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 248
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 250
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 252
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 254
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 256
    .restart local v19    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 257
    .local v20, "_arg7":I
    move-object v0, v9

    move-object v1, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getContacts(Ljava/lang/String;ZIIIIII)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v13

    .line 230
    .end local v2    # "_arg1":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":I
    :pswitch_13
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->getMissCallCount(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v13

    .line 220
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_14
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->isSupportTransferAudio(Ljava/lang/String;)Z

    move-result v1

    .line 224
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v13

    .line 208
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_15
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v13

    nop

    .line 213
    .local v0, "_arg1":Z
    :cond_4
    invoke-virtual {v9, v1, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->transferAudio(Ljava/lang/String;Z)Z

    move-result v2

    .line 214
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return v13

    .line 144
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_16
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 148
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 149
    .local v14, "_arg1_length":I
    if-gez v14, :cond_5

    .line 150
    const/4 v0, 0x0

    .local v0, "_arg1":[Ljava/lang/String;
    goto :goto_2

    .line 153
    .end local v0    # "_arg1":[Ljava/lang/String;
    :cond_5
    new-array v0, v14, [Ljava/lang/String;

    .restart local v0    # "_arg1":[Ljava/lang/String;
    :goto_2
    move-object v15, v0

    .line 156
    .end local v0    # "_arg1":[Ljava/lang/String;
    .local v15, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 157
    .local v7, "_arg2_length":I
    if-gez v7, :cond_6

    .line 158
    const/4 v0, 0x0

    .local v0, "_arg2":[Ljava/lang/String;
    goto :goto_3

    .line 161
    .end local v0    # "_arg2":[Ljava/lang/String;
    :cond_6
    new-array v0, v7, [Ljava/lang/String;

    .restart local v0    # "_arg2":[Ljava/lang/String;
    :goto_3
    move-object v6, v0

    .line 164
    .end local v0    # "_arg2":[Ljava/lang/String;
    .local v6, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .local v5, "_arg3_length":I
    if-gez v5, :cond_7

    .line 166
    const/4 v0, 0x0

    .local v0, "_arg3":[I
    goto :goto_4

    .line 169
    .end local v0    # "_arg3":[I
    :cond_7
    new-array v0, v5, [I

    .restart local v0    # "_arg3":[I
    :goto_4
    move-object v4, v0

    .line 172
    .end local v0    # "_arg3":[I
    .local v4, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg4_length":I
    if-gez v3, :cond_8

    .line 174
    const/4 v0, 0x0

    .local v0, "_arg4":[Ljava/lang/String;
    goto :goto_5

    .line 177
    .end local v0    # "_arg4":[Ljava/lang/String;
    :cond_8
    new-array v0, v3, [Ljava/lang/String;

    .restart local v0    # "_arg4":[Ljava/lang/String;
    :goto_5
    move-object v2, v0

    .line 180
    .end local v0    # "_arg4":[Ljava/lang/String;
    .local v2, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg5_length":I
    if-gez v1, :cond_9

    .line 182
    const/4 v0, 0x0

    .local v0, "_arg5":[Ljava/lang/String;
    goto :goto_6

    .line 185
    .end local v0    # "_arg5":[Ljava/lang/String;
    :cond_9
    new-array v0, v1, [Ljava/lang/String;

    .line 188
    .restart local v0    # "_arg5":[Ljava/lang/String;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 189
    .local v13, "_arg6_length":I
    if-gez v13, :cond_a

    .line 190
    const/16 v16, 0x0

    .line 193
    .local v16, "_arg6":[I
    move-object/from16 v21, v0

    goto :goto_7

    .end local v16    # "_arg6":[I
    :cond_a
    move-object/from16 v21, v0

    new-array v0, v13, [I

    .end local v0    # "_arg5":[Ljava/lang/String;
    .local v21, "_arg5":[Ljava/lang/String;
    move-object/from16 v16, v0

    .restart local v16    # "_arg6":[I
    :goto_7
    move-object/from16 v0, v16

    .line 195
    .end local v16    # "_arg6":[I
    .local v0, "_arg6":[I
    move-object/from16 v23, v0

    move-object/from16 v22, v21

    move-object v0, v9

    .end local v0    # "_arg6":[I
    .end local v21    # "_arg5":[Ljava/lang/String;
    .local v22, "_arg5":[Ljava/lang/String;
    .local v23, "_arg6":[I
    move/from16 v16, v1

    move-object v1, v8

    .end local v1    # "_arg5_length":I
    .local v16, "_arg5_length":I
    move-object/from16 v24, v2

    move-object v2, v15

    .end local v2    # "_arg4":[Ljava/lang/String;
    .local v24, "_arg4":[Ljava/lang/String;
    move/from16 v17, v3

    move-object v3, v6

    .end local v3    # "_arg4_length":I
    .local v17, "_arg4_length":I
    move-object/from16 v25, v4

    .end local v4    # "_arg3":[I
    .local v25, "_arg3":[I
    move/from16 v18, v5

    move-object/from16 v5, v24

    .end local v5    # "_arg3_length":I
    .local v18, "_arg3_length":I
    move-object/from16 v26, v8

    move-object v8, v6

    move-object/from16 v6, v22

    .end local v6    # "_arg2":[Ljava/lang/String;
    .local v8, "_arg2":[Ljava/lang/String;
    .local v26, "_arg0":Ljava/lang/String;
    move/from16 v19, v7

    move-object/from16 v7, v23

    .end local v7    # "_arg2_length":I
    .local v19, "_arg2_length":I
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->queryCall(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    .line 196
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 199
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 200
    move-object/from16 v1, v25

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 201
    .end local v25    # "_arg3":[I
    .local v1, "_arg3":[I
    move-object/from16 v2, v24

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 202
    .end local v24    # "_arg4":[Ljava/lang/String;
    .restart local v2    # "_arg4":[Ljava/lang/String;
    move-object/from16 v3, v22

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 203
    .end local v22    # "_arg5":[Ljava/lang/String;
    .local v3, "_arg5":[Ljava/lang/String;
    move-object/from16 v4, v23

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    .end local v23    # "_arg6":[I
    .local v4, "_arg6":[I
    const/4 v5, 0x1

    return v5

    .line 134
    .end local v0    # "_result":Z
    .end local v1    # "_arg3":[I
    .end local v2    # "_arg4":[Ljava/lang/String;
    .end local v3    # "_arg5":[Ljava/lang/String;
    .end local v4    # "_arg6":[I
    .end local v8    # "_arg2":[Ljava/lang/String;
    .end local v13    # "_arg6_length":I
    .end local v14    # "_arg1_length":I
    .end local v15    # "_arg1":[Ljava/lang/String;
    .end local v16    # "_arg5_length":I
    .end local v17    # "_arg4_length":I
    .end local v18    # "_arg3_length":I
    .end local v19    # "_arg2_length":I
    .end local v26    # "_arg0":Ljava/lang/String;
    :pswitch_17
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->reDial(Ljava/lang/String;)Z

    move-result v1

    .line 138
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_18
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->handleThreeWayCall(Ljava/lang/String;I)Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x1

    return v3

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_19
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->dialDTMF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 116
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v3, 0x1

    return v3

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1a
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->dialNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 104
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v3, 0x1

    return v3

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1b
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->hangUpCall(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v2, 0x1

    return v2

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1c
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->answerCall(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v2, 0x1

    return v2

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1d
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->isCurrentDownloading(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v2, 0x1

    return v2

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v1, 0x1

    return v1

    .line 50
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
    :pswitch_1f
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    move-result-object v0

    .line 53
    .restart local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService$Stub;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v1, 0x1

    return v1

    .line 45
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
    :cond_b
    move v1, v13

    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
