.class public abstract Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;
.super Landroid/os/Binder;
.source "IResourceService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/store/IResourceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/store/IResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;
    }
.end annotation


# static fields
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

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.store.IResourceService"

    .line 141
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/store/IResourceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.store.IResourceService"

    .line 152
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/store/IResourceService;

    if-eqz v1, :cond_1

    .line 154
    check-cast v0, Lcom/xiaopeng/xuimanager/store/IResourceService;

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/store/IResourceService;
    .locals 1

    .line 1207
    sget-object v0, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IResourceService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/store/IResourceService;)Z
    .locals 1

    .line 1197
    sget-object v0, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IResourceService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1201
    sput-object p0, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IResourceService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1198
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const/4 v11, 0x1

    const-string v2, "com.xiaopeng.xuimanager.store.IResourceService"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 479
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 469
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 460
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->removeLocalDataById(J)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 451
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->removeLocalDataByUrl(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 443
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->queryAllInfo()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 433
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 423
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getTotalBytesById(J)J

    move-result-wide v0

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 413
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 403
    :pswitch_7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 406
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getDownloadedBytesById(J)J

    move-result-wide v0

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 393
    :pswitch_8
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getDownloadStatusById(J)I

    move-result v0

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 383
    :pswitch_9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v0

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 373
    :pswitch_a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v0

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 363
    :pswitch_b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->fetchDownloadStatusById(J)I

    move-result v0

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 351
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 341
    :pswitch_d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->resumeDownload(Ljava/lang/String;)Z

    move-result v0

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 331
    :pswitch_e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->cancelDownload(Ljava/lang/String;)Z

    move-result v0

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 321
    :pswitch_f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->pauseDownload(Ljava/lang/String;)Z

    move-result v0

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 309
    :pswitch_10
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 297
    :pswitch_11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 285
    :pswitch_12
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 275
    :pswitch_13
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->pause(Ljava/lang/String;)Z

    move-result v0

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 265
    :pswitch_14
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->remove(Ljava/lang/String;)Z

    move-result v0

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 255
    :pswitch_15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->resume(Ljava/lang/String;)Z

    move-result v0

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 240
    :pswitch_16
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->start(Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;)Z

    move-result v0

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 231
    :pswitch_17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->unregisterDownloadListener(Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 222
    :pswitch_18
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->registerDownloadListener(Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 212
    :pswitch_19
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v11

    .line 196
    :pswitch_1a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/store/bean/ResourceContainerBean;

    move-result-object v0

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0, v10, v11}, Lcom/xiaopeng/xuimanager/store/bean/ResourceContainerBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v11

    .line 177
    :pswitch_1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v6, v11

    goto :goto_2

    :cond_2
    move v6, v3

    .line 185
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move v1, v2

    move-wide v2, v4

    move v4, v6

    move v5, v7

    move-wide v6, v12

    .line 190
    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xuimanager/store/IResourceService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 169
    :cond_3
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

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
