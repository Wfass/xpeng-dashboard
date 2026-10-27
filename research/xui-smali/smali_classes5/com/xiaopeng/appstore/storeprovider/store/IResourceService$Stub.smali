.class public abstract Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;
.super Landroid/os/Binder;
.source "IResourceService.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.appstore.storeprovider.store.IResourceService"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_cancelDownload:I = 0xe

.field static final TRANSACTION_cancelResDownload:I = 0xb

.field static final TRANSACTION_enqueue:I = 0x10

.field static final TRANSACTION_fetchDownloadStatusById:I = 0x11

.field static final TRANSACTION_fetchDownloadStatusByUrl:I = 0x12

.field static final TRANSACTION_getDownloadStatusById:I = 0x14

.field static final TRANSACTION_getDownloadStatusByUrl:I = 0x13

.field static final TRANSACTION_getDownloadedBytesById:I = 0x15

.field static final TRANSACTION_getDownloadedBytesByUrl:I = 0x16

.field static final TRANSACTION_getLocalFilePath:I = 0x1c

.field static final TRANSACTION_getTotalBytesById:I = 0x17

.field static final TRANSACTION_getTotalBytesByUrl:I = 0x18

.field static final TRANSACTION_pause:I = 0x9

.field static final TRANSACTION_pauseDownload:I = 0xd

.field static final TRANSACTION_pauseResDownload:I = 0xc

.field static final TRANSACTION_queryAllInfo:I = 0x19

.field static final TRANSACTION_queryDownloadInfo:I = 0x3

.field static final TRANSACTION_queryResourceData:I = 0x2

.field static final TRANSACTION_registerDownloadListener:I = 0x4

.field static final TRANSACTION_remove:I = 0x8

.field static final TRANSACTION_removeLocalDataById:I = 0x1b

.field static final TRANSACTION_removeLocalDataByUrl:I = 0x1a

.field static final TRANSACTION_resume:I = 0x7

.field static final TRANSACTION_resumeDownload:I = 0xf

.field static final TRANSACTION_resumeResDownload:I = 0xa

.field static final TRANSACTION_start:I = 0x6

.field static final TRANSACTION_unregisterDownloadListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-eqz v1, :cond_1

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object v1

    .line 150
    :cond_1
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 1

    .line 1134
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1124
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-nez v0, :cond_1

    .line 1127
    if-eqz p0, :cond_0

    .line 1128
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    .line 1129
    const/4 v0, 0x1

    return v0

    .line 1131
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1125
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 154
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 158
    const-string v13, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 159
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 470
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 460
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    return v14

    .line 451
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 454
    .local v0, "_arg0":J
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->removeLocalDataById(J)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    return v14

    .line 442
    .end local v0    # "_arg0":J
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->removeLocalDataByUrl(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    return v14

    .line 434
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryAllInfo()Ljava/util/List;

    move-result-object v0

    .line 436
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 438
    return v14

    .line 424
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v1

    .line 428
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    return v14

    .line 414
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 417
    .local v0, "_arg0":J
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getTotalBytesById(J)J

    move-result-wide v2

    .line 418
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    return v14

    .line 404
    .end local v0    # "_arg0":J
    .end local v2    # "_result":J
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v1

    .line 408
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 410
    return v14

    .line 394
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 397
    .local v0, "_arg0":J
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadedBytesById(J)J

    move-result-wide v2

    .line 398
    .restart local v2    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    return v14

    .line 384
    .end local v0    # "_arg0":J
    .end local v2    # "_result":J
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 387
    .restart local v0    # "_arg0":J
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadStatusById(J)I

    move-result v2

    .line 388
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v14

    .line 374
    .end local v0    # "_arg0":J
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v1

    .line 378
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return v14

    .line 364
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v1

    .line 368
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v14

    .line 354
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 357
    .local v0, "_arg0":J
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->fetchDownloadStatusById(J)I

    move-result v2

    .line 358
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return v14

    .line 342
    .end local v0    # "_arg0":J
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 348
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    return v14

    .line 332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resumeDownload(Ljava/lang/String;)Z

    move-result v1

    .line 336
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return v14

    .line 322
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->cancelDownload(Ljava/lang/String;)Z

    move-result v1

    .line 326
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    return v14

    .line 312
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pauseDownload(Ljava/lang/String;)Z

    move-result v1

    .line 316
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    return v14

    .line 300
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 306
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return v14

    .line 288
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 294
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return v14

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 282
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return v14

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pause(Ljava/lang/String;)Z

    move-result v1

    .line 270
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    return v14

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->remove(Ljava/lang/String;)Z

    move-result v1

    .line 260
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return v14

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resume(Ljava/lang/String;)Z

    move-result v1

    .line 250
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return v14

    .line 231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

    .local v0, "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    goto :goto_0

    .line 237
    .end local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    :cond_0
    const/4 v0, 0x0

    .line 239
    .restart local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    :goto_0
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z

    move-result v1

    .line 240
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return v14

    .line 222
    .end local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v0

    .line 225
    .local v0, "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    return v14

    .line 213
    .end local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v0

    .line 216
    .restart local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v14

    .line 203
    .end local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 209
    return v14

    .line 187
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;

    move-result-object v2

    .line 191
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v2, v12, v14}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    :goto_1
    return v14

    .line 168
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 172
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 174
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v4, v0

    .line 176
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 178
    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 180
    .local v19, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 181
    .local v21, "_arg5":Ljava/lang/String;
    move-object v0, v9

    move v1, v15

    move-wide/from16 v2, v16

    move/from16 v5, v18

    move-wide/from16 v6, v19

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v14

    .line 163
    .end local v4    # "_arg2":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":F
    .end local v19    # "_arg4":D
    .end local v21    # "_arg5":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
