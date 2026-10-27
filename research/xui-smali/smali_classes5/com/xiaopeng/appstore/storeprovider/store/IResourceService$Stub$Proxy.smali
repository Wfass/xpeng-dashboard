.class Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResourceService.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;


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

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 480
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 16
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anInt",
            "aLong",
            "aBoolean",
            "aFloat",
            "aDouble",
            "aString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 498
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 499
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 500
    move-wide/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    move/from16 v15, p4

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeFloat(F)V

    .line 503
    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    .line 504
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 506
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 507
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    move v4, v12

    move-wide v5, v13

    move v7, v15

    move v8, v11

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    return-void

    .line 510
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    nop

    .line 516
    return-void

    .line 513
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-wide/from16 v13, p2

    :goto_1
    move/from16 v15, p4

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw v0
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 788
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 789
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    return v3

    .line 791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 795
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    nop

    .line 798
    return v2

    .line 795
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    throw v2
.end method

.method public cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 724
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 725
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    return v3

    .line 727
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 731
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    nop

    .line 734
    return v2

    .line 731
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    throw v2
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 831
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 832
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    return-wide v3

    .line 834
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-wide v2, v3

    .line 838
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    nop

    .line 841
    return-wide v2

    .line 838
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    throw v2
.end method

.method public fetchDownloadStatusById(J)I
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 851
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 852
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 853
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusById(J)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    return v3

    .line 855
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move v2, v3

    .line 859
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return v2

    .line 859
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v2
.end method

.method public fetchDownloadStatusByUrl(Ljava/lang/String;)I
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 873
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 874
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    return v3

    .line 876
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move v2, v3

    .line 880
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    nop

    .line 883
    return v2

    .line 880
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v2
.end method

.method public getDownloadStatusById(J)I
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 915
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 916
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusById(J)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    return v3

    .line 918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move v2, v3

    .line 922
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    nop

    .line 925
    return v2

    .line 922
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw v2
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)I
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 894
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 895
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    return v3

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move v2, v3

    .line 901
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    nop

    .line 904
    return v2

    .line 901
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    throw v2
.end method

.method public getDownloadedBytesById(J)J
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 936
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 937
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesById(J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    return-wide v3

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-wide v2, v3

    .line 943
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    nop

    .line 946
    return-wide v2

    .line 943
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    throw v2
.end method

.method public getDownloadedBytesByUrl(Ljava/lang/String;)J
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 957
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 958
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    return-wide v3

    .line 960
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-wide v2, v3

    .line 964
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    nop

    .line 967
    return-wide v2

    .line 964
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 487
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    return-object v0
.end method

.method public getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1072
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1075
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1078
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1079
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    return-object v3

    .line 1081
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 1085
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1087
    nop

    .line 1088
    return-object v2

    .line 1085
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1087
    throw v2
.end method

.method public getTotalBytesById(J)J
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 977
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 978
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 979
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesById(J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    return-wide v3

    .line 981
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-wide v2, v3

    .line 985
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    nop

    .line 988
    return-wide v2

    .line 985
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    throw v2
.end method

.method public getTotalBytesByUrl(Ljava/lang/String;)J
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 999
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1000
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    return-wide v3

    .line 1002
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-wide v2, v3

    .line 1006
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    nop

    .line 1009
    return-wide v2

    .line 1006
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    throw v2
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 680
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 681
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pause(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 681
    return v3

    .line 683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 687
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    nop

    .line 690
    return v2

    .line 687
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    throw v2
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 767
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 768
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    return v3

    .line 770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 774
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    nop

    .line 777
    return v2

    .line 774
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v2
.end method

.method public pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 746
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 747
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    return v3

    .line 749
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 753
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    nop

    .line 756
    return v2

    .line 753
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    throw v2
.end method

.method public queryAllInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1019
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1020
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryAllInfo()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1020
    return-object v3

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1023
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 1026
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    nop

    .line 1029
    return-object v2

    .line 1026
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v2
.end method

.method public queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "resIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 552
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 553
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    return-object v3

    .line 555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 556
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 559
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    nop

    .line 562
    return-object v2

    .line 559
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw v2
.end method

.method public queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 526
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 527
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    return-object v3

    .line 529
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    sget-object v3, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    goto :goto_0

    .line 534
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :cond_1
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :goto_0
    move-object v2, v3

    .line 538
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    nop

    .line 541
    return-object v2

    .line 538
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw v2
.end method

.method public registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
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

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 571
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 572
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 573
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    return-void

    .line 576
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    nop

    .line 582
    return-void

    .line 579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    throw v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 659
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 660
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->remove(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    return v3

    .line 662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 666
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    nop

    .line 669
    return v2

    .line 666
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw v2
.end method

.method public removeLocalDataById(J)V
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1057
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1058
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1059
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataById(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    return-void

    .line 1062
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1065
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    throw v2
.end method

.method public removeLocalDataByUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1034
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1039
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1040
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataByUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    return-void

    .line 1043
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    nop

    .line 1049
    return-void

    .line 1046
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    throw v2
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 5
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 638
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 639
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resume(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    return v3

    .line 641
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 645
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    nop

    .line 648
    return v2

    .line 645
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    throw v2
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 809
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 810
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    return v3

    .line 812
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 816
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    nop

    .line 819
    return v2

    .line 816
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    throw v2
.end method

.method public resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 702
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 703
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    return v3

    .line 705
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 709
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    nop

    .line 712
    return v2

    .line 709
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    throw v2
.end method

.method public start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z
    .locals 6
    .param p1, "resourceBean"    # Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 609
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 617
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 618
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    return v2

    .line 620
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 624
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    nop

    .line 627
    return v2

    .line 624
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    throw v2
.end method

.method public unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
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

    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 590
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 591
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 592
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    return-void

    .line 595
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw v2
.end method
