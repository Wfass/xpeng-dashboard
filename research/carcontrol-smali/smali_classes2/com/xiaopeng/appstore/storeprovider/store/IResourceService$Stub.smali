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

    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 135
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 146
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object v0

    .line 150
    :cond_1
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 1

    .line 1134
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;)Z
    .locals 1

    .line 1124
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1128
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1125
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 470
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 460
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 451
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->removeLocalDataById(J)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 442
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->removeLocalDataByUrl(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 434
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryAllInfo()Ljava/util/List;

    move-result-object p1

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 424
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide p1

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 414
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getTotalBytesById(J)J

    move-result-wide p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 404
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 394
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadedBytesById(J)J

    move-result-wide p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 384
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadStatusById(J)I

    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 374
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 364
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 354
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->fetchDownloadStatusById(J)I

    move-result p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 342
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 332
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resumeDownload(Ljava/lang/String;)Z

    move-result p1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 322
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->cancelDownload(Ljava/lang/String;)Z

    move-result p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 312
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pauseDownload(Ljava/lang/String;)Z

    move-result p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 300
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 288
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 276
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 266
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->pause(Ljava/lang/String;)Z

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 256
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->remove(Ljava/lang/String;)Z

    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 246
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->resume(Ljava/lang/String;)Z

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 231
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    sget-object p1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 239
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 222
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 213
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 203
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 187
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;

    move-result-object p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 168
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v0

    .line 176
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 181
    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
