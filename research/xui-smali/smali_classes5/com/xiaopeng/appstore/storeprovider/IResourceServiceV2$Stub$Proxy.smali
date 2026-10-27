.class Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResourceServiceV2.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 311
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 373
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 374
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-object v3

    .line 376
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    goto :goto_1

    .line 381
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :cond_2
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :goto_1
    move-object v2, v3

    .line 385
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    nop

    .line 388
    return-object v2

    .line 385
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    throw v2
.end method

.method public assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {p2, v0, v3}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 338
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 339
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-object v3

    .line 341
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    goto :goto_1

    .line 346
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :cond_2
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :goto_1
    move-object v2, v3

    .line 350
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    nop

    .line 353
    return-object v2

    .line 350
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw v2
.end method

.method public assembleEnqueueAll(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 605
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 612
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 613
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleEnqueueAll(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    return-object v3

    .line 615
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    goto :goto_1

    .line 620
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :cond_2
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :goto_1
    move-object v2, v3

    .line 624
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    nop

    .line 627
    return-object v2

    .line 624
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    throw v2
.end method

.method public getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "resType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 403
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 404
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    return-object v3

    .line 406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 407
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 410
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    nop

    .line 413
    return-object v2

    .line 410
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v2
.end method

.method public getAssembleInfoListAll(IZLjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "resType"    # I
    .param p2, "includeSilent"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resType",
            "includeSilent",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 543
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 551
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 552
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->getAssembleInfoListAll(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-object v3

    .line 554
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 555
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 558
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-object v2

    .line 558
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 318
    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    return-object v0
.end method

.method public query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 464
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 471
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 472
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    return-object v3

    .line 474
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    goto :goto_1

    .line 479
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :cond_2
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :goto_1
    move-object v2, v3

    .line 483
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    nop

    .line 486
    return-object v2

    .line 483
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    throw v2
.end method

.method public queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 5
    .param p1, "appGroupTypes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appGroupTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 496
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 497
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 498
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    return-object v3

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    goto :goto_0

    .line 505
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :cond_1
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :goto_0
    move-object v2, v3

    .line 509
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    nop

    .line 512
    return-object v2

    .line 509
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    throw v2
.end method

.method public queryAppStoreCloud(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)I
    .locals 10
    .param p1, "method"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "queryParams"    # Landroid/os/Bundle;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "path",
            "queryParams",
            "body",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 573
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    if-eqz p5, :cond_1

    invoke-interface {p5}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 581
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 582
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 583
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryAppStoreCloud(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    return v3

    .line 585
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move v2, v3

    .line 589
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 592
    return v2

    .line 589
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v2
.end method

.method public queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 5
    .param p1, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 522
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 523
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 524
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    return-object v3

    .line 526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    goto :goto_0

    .line 531
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :cond_1
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :goto_0
    move-object v2, v3

    .line 535
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    nop

    .line 538
    return-object v2

    .line 535
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    throw v2
.end method

.method public registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 5
    .param p1, "resType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resType",
            "callingPackage",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 425
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 426
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    return-void

    .line 429
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    nop

    .line 435
    return-void

    .line 432
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v2
.end method

.method public unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 443
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 444
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 445
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    return-void

    .line 448
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return-void

    .line 451
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v2
.end method
