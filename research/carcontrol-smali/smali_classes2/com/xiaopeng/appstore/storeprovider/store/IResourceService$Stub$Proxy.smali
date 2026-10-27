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

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 498
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 499
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v5, p2

    .line 500
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 501
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 502
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    move-wide/from16 v9, p6

    .line 503
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    move-object/from16 v11, p8

    .line 504
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 505
    :try_start_1
    iget-object v7, v12, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 506
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 507
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 510
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 513
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw v0
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 785
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 789
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 795
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    throw p1
.end method

.method public cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 720
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

    if-nez v2, :cond_0

    .line 724
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 725
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 727
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 731
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    throw p1
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 827
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

    if-nez v2, :cond_0

    .line 831
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 832
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 834
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    throw p1
.end method

.method public fetchDownloadStatusById(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 849
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 851
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 852
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 853
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusById(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 855
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw p1
.end method

.method public fetchDownloadStatusByUrl(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 870
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 874
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 876
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw p1
.end method

.method public getDownloadStatusById(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 916
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusById(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw p1
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 891
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 894
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 895
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    throw p1
.end method

.method public getDownloadedBytesById(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 937
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesById(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 945
    throw p1
.end method

.method public getDownloadedBytesByUrl(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 954
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 958
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 960
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p1

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    return-object v0
.end method

.method public getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 1075
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1079
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1081
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1087
    throw p1
.end method

.method public getTotalBytesById(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 975
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 977
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 979
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesById(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 981
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    throw p1
.end method

.method public getTotalBytesByUrl(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 996
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 999
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1000
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 1002
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p1

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    throw p1
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 681
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 687
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    throw p1
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 764
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 767
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 774
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw p1
.end method

.method public pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 742
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

    if-nez v2, :cond_0

    .line 746
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 747
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 749
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 753
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    throw p1
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 1017
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryAllInfo()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1023
    sget-object v2, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v2
.end method

.method public queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 556
    sget-object p1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw p1
.end method

.method public queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 523
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 527
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 529
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    sget-object p1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 538
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw p1
.end method

.method public registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 569
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 570
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

    if-nez v2, :cond_1

    .line 572
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 573
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 576
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 656
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 659
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 660
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->remove(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 666
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw p1
.end method

.method public removeLocalDataById(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 1055
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1057
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1058
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataById(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1062
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    throw p1
.end method

.method public removeLocalDataByUrl(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 1036
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1040
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataByUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1043
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    throw p1
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 639
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resume(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 641
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 645
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    throw p1
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 806
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 809
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 810
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 812
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 816
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    throw p1
.end method

.method public resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 698
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

    if-nez v2, :cond_0

    .line 702
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 703
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 705
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 709
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    throw p1
.end method

.method public start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 608
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

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

    if-nez v4, :cond_1

    .line 617
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 618
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 620
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 624
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    throw p1
.end method

.method public unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IResourceService"

    .line 588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 589
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

    if-nez v2, :cond_1

    .line 591
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 592
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 595
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw p1
.end method
