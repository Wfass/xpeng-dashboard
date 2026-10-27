.class Landroid/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/view/IWindowManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2553
    iput-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3043
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3044
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3047
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3048
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 3051
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 3053
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3060
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3062
    throw p1
.end method

.method public addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2951
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 2953
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2954
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2957
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2959
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2961
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2962
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2966
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2557
    iget-object v0, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5834
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5836
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5837
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 5840
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5841
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 5842
    sget-object p1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5849
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5851
    throw p1
.end method

.method public attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5740
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5741
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 5743
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5744
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5747
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5749
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5751
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5752
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 5755
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5757
    sget-object p1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 5764
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5766
    throw p1
.end method

.method public attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5793
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5796
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5798
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5799
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5803
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5808
    throw p1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2849
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2852
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2854
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2855
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2859
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2864
    throw p1
.end method

.method public clearForcedDisplaySize(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2763
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2764
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2768
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2773
    throw p1
.end method

.method public clearTaskTransitionSpec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 6027
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6028
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6030
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6031
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->clearTaskTransitionSpec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6035
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6040
    throw v2
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4396
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4398
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4399
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4402
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4403
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4406
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4408
    throw p1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3390
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3391
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3395
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3400
    throw p1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4651
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4654
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4655
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4657
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4658
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4664
    invoke-virtual {p4, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4668
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4670
    throw p1
.end method

.method public destroyInputConsumer(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4682
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4685
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4687
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4688
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4691
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4695
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4697
    throw p1
.end method

.method public detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5865
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5867
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5869
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5870
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5874
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5879
    throw p1
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3228
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3230
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3231
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3235
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3240
    throw p1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3337
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    .line 3339
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 3343
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3345
    :goto_1
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3347
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3348
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3352
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3357
    throw p1
.end method

.method public dontOverrideDisplayInfo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4913
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4915
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4917
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4918
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->dontOverrideDisplayInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4922
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4927
    throw p1
.end method

.method public enableScreenIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4367
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4368
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4370
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4371
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4375
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4380
    throw v2
.end method

.method public endProlongedAnimations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3160
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3161
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3163
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3164
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3270
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3271
    invoke-interface {p1}, Landroid/view/IOnKeyguardExitResult;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3272
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3274
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3275
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3279
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3284
    throw p1
.end method

.method public freezeDisplayRotation(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3844
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3847
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3849
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3850
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->freezeDisplayRotation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3854
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3859
    throw p1
.end method

.method public freezeRotation(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3763
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3767
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3768
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3772
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3777
    throw p1
.end method

.method public getAnimationScale(I)F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3411
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3413
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3414
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3417
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw p1
.end method

.method public getAnimationScales()[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3432
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3433
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3435
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3436
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3439
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    throw v2
.end method

.method public getAppTaskId(Landroid/os/IBinder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 6073
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6075
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6077
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6078
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAppTaskId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6081
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6082
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6087
    throw p1
.end method

.method public getBaseDisplayDensity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2804
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2808
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2809
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2812
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2818
    throw p1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2712
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2714
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2716
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2717
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2721
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2723
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2729
    throw p1
.end method

.method public getCurrentAnimatorScale()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3497
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3498
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3500
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3501
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3504
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    throw v2
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4709
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4710
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4712
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4713
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4716
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4718
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4725
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4727
    throw v2
.end method

.method public getDefaultDisplayRotation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3655
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3656
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3658
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3659
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    throw v2
.end method

.method public getDisplayImePolicy(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5203
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5205
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5207
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5208
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getDisplayImePolicy(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5211
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5212
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5217
    throw p1
.end method

.method public getDockedStackSide()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4455
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4457
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4458
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4467
    throw v2
.end method

.method public getImeDisplayId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5970
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5971
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5973
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5974
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getImeDisplayId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5977
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5978
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    throw v2
.end method

.method public getInitialDisplayDensity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2781
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2785
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2786
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2789
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2790
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    throw p1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2688
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2692
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2693
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2697
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2699
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2703
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2705
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.view.IWindowManager"

    return-object v0
.end method

.method public getNavBarPosition(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4289
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4291
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4292
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getNavBarPosition(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4295
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4301
    throw p1
.end method

.method public getPreferredOptionsPanelGravity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3737
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3739
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3741
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3742
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3745
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3751
    throw p1
.end method

.method public getRemoveContentMode(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5005
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5007
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5009
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5010
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getRemoveContentMode(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5013
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5019
    throw p1
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4563
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4565
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4566
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4570
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4571
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4572
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4576
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    throw p1
.end method

.method public getSupportedDisplayHashAlgorithms()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5622
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5624
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5625
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5628
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5629
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5634
    throw v2
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4425
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4427
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4428
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4431
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4433
    sget-object p1, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowContentFrameStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4440
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4442
    throw p1
.end method

.method public getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5471
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 5473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5474
    invoke-virtual {p1, v0, v3}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5477
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5479
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5480
    iget-object v4, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5482
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5483
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5486
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5488
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 5489
    invoke-virtual {p3, v1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5493
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5495
    throw p1
.end method

.method public getWindowingMode(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4943
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4945
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4946
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getWindowingMode(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4949
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4950
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4955
    throw p1
.end method

.method public hasNavigationBar(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4263
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4265
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4266
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4269
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4273
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4275
    throw p1
.end method

.method public hideTransientBars(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.IWindowManager"

    .line 4167
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4169
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4171
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4172
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    throw p1
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5594
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5596
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5597
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5601
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5606
    throw p1
.end method

.method public injectInputAfterTransactionsApplied(Landroid/view/InputEvent;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5264
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 5266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5267
    invoke-virtual {p1, v0, v3}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5270
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5272
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 5273
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5274
    iget-object v4, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x67

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5276
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5277
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->injectInputAfterTransactionsApplied(Landroid/view/InputEvent;IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5280
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 5284
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5286
    throw p1
.end method

.method public isDisplayRotationFrozen(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3900
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3902
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3904
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3905
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->isDisplayRotationFrozen(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3908
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3912
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    throw p1
.end method

.method public isKeyguardLocked()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3293
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3295
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3296
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3303
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3305
    throw v2
.end method

.method public isKeyguardSecure(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3318
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3319
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->isKeyguardSecure(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3322
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3326
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3328
    throw p1
.end method

.method public isLayerTracing()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5327
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5329
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5330
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isLayerTracing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5333
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5337
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5339
    throw v2
.end method

.method public isRotationFrozen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3814
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3816
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3817
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3820
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3824
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3826
    throw v2
.end method

.method public isSafeModeEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4344
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4346
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4347
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4350
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4354
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4356
    throw v2
.end method

.method public isTaskSnapshotSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5944
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5946
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5947
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isTaskSnapshotSupported()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5950
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5954
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5956
    throw v2
.end method

.method public isViewServerRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2624
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2625
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isViewServerRunning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2628
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2632
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2634
    throw v2
.end method

.method public isWindowToken(Landroid/os/IBinder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2918
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2920
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2922
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2923
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->isWindowToken(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2926
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2927
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2930
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2932
    throw p1
.end method

.method public isWindowTraceEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4884
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4885
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4887
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4888
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isWindowTraceEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4891
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4892
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4895
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4897
    throw v2
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4314
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4315
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4318
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4320
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4322
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4323
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4327
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4332
    throw p1
.end method

.method public mirrorDisplay(ILandroid/view/SurfaceControl;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5384
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5386
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5387
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5392
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5393
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5397
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5399
    throw p1
.end method

.method public mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4009
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4010
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4013
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4014
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4017
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4019
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4026
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4028
    throw p1
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2645
    invoke-interface {p1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2646
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2648
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2649
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2652
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
    throw p1
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3105
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p2, :cond_1

    .line 3106
    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 3107
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3111
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3112
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3116
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    throw p1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3130
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    invoke-virtual {p1, v0, v2}, Landroid/view/RemoteAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3134
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3136
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3137
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3139
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3140
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3144
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3149
    throw p1
.end method

.method public reenableKeyguard(Landroid/os/IBinder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3251
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3253
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3254
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3258
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    throw p1
.end method

.method public refreshScreenCaptureDisabled(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3595
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3597
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3599
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3600
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3604
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3609
    throw p1
.end method

.method public registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5893
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5894
    invoke-interface {p1}, Landroid/view/ICrossWindowBlurEnabledListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5895
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5897
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5898
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5901
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 5905
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5907
    throw p1
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4739
    invoke-interface {p1}, Landroid/view/IDisplayFoldListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4740
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4742
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4743
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4747
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4752
    throw p1
.end method

.method public registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4788
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4789
    invoke-interface {p1}, Landroid/view/IDisplayWindowListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4790
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4792
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4793
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4796
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4797
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4802
    throw p1
.end method

.method public registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 4511
    invoke-interface {p2}, Landroid/view/IPinnedTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4512
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4514
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4515
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4519
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4524
    throw p1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4627
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz p3, :cond_0

    .line 4628
    invoke-interface {p3}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4629
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4631
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4632
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4636
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4641
    throw p1
.end method

.method public registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4092
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4093
    invoke-interface {p1}, Landroid/view/ISystemGestureExclusionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4095
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4097
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4098
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4102
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4107
    throw p1
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4042
    invoke-interface {p1}, Landroid/view/IWallpaperVisibilityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4043
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4044
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4046
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4047
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4050
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 4054
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4056
    throw p1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3708
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3709
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3710
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3712
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3713
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3717
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    throw p1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2984
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2989
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2990
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2994
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2999
    throw p1
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4537
    invoke-interface {p1}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4539
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4541
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4542
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4546
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4551
    throw p1
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4144
    invoke-interface {p1}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4145
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4147
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4148
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4151
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 4155
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4157
    throw p1
.end method

.method public requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5564
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_0

    .line 5565
    invoke-interface {p4}, Landroid/view/IScrollCaptureResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5566
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5568
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5569
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/IWindowManager;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5573
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5578
    throw p1
.end method

.method public screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 6097
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 6100
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6101
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6104
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6106
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6108
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6109
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 6112
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 6114
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 6121
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6123
    throw p1
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3976
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3977
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3979
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3980
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3984
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3985
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3992
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3994
    throw v2
.end method

.method public setAccessibilityFocusedDisplay(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 6132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6134
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6136
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6137
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setAccessibilityFocusedDisplay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6146
    throw p1
.end method

.method public setAnimationScale(IF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3456
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3458
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3459
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3463
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    throw p1
.end method

.method public setAnimationScales([F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 3477
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3479
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3480
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3484
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    throw p1
.end method

.method public setDisplayHashThrottlingEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5691
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5692
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5693
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5695
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5696
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setDisplayHashThrottlingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5700
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5705
    throw p1
.end method

.method public setDisplayImePolicy(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5236
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5238
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5239
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setDisplayImePolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5248
    throw p1
.end method

.method public setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5411
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 5413
    invoke-interface {p2}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5414
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5416
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5417
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5421
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5426
    throw p1
.end method

.method public setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3011
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3012
    invoke-interface {p1}, Landroid/view/IDisplayWindowRotationController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3013
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3015
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3016
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3020
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    throw p1
.end method

.method public setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4481
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4482
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4485
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4487
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4489
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4490
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4494
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4499
    throw p1
.end method

.method public setEventDispatching(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2895
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2896
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2897
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2899
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2900
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2904
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2909
    throw p1
.end method

.method public setFixedToUserRotation(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3925
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3928
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3930
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3931
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3935
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3940
    throw p1
.end method

.method public setFocusedAppNoChecked(Landroid/os/IBinder;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 6049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6051
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6052
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6054
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6055
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setFocusedAppNoChecked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6059
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6064
    throw p1
.end method

.method public setForcedDisplayDensityForUser(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2826
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2829
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2832
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2833
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2837
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2842
    throw p1
.end method

.method public setForcedDisplayScalingMode(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2876
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2877
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2881
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2886
    throw p1
.end method

.method public setForcedDisplaySize(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2736
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2739
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2740
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2742
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2743
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2747
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2752
    throw p1
.end method

.method public setForwardedInsets(ILandroid/graphics/Insets;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 4596
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4597
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Insets;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4600
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4602
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4604
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4605
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setForwardedInsets(ILandroid/graphics/Insets;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4609
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4614
    throw p1
.end method

.method public setIgnoreOrientationRequest(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3950
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3952
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3953
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3955
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3956
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3960
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    throw p1
.end method

.method public setInTouchMode(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3519
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3520
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3523
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3524
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3528
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    throw p1
.end method

.method public setLayerTracing(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5351
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5352
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5354
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5355
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setLayerTracing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5359
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5364
    throw p1
.end method

.method public setLayerTracingFlags(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5533
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5535
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5536
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setLayerTracingFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5540
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5545
    throw p1
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4234
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4235
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4236
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4238
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4239
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4243
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4248
    throw p1
.end method

.method public setRecentsVisibility(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.IWindowManager"

    .line 4188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4189
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4190
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4192
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4193
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4200
    throw p1
.end method

.method public setRemoveContentMode(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5039
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5040
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5041
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5044
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5045
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setRemoveContentMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5049
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5054
    throw p1
.end method

.method public setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3076
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_0

    .line 3079
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3080
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3082
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3083
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3087
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    throw p1
.end method

.method public setShouldShowSystemDecors(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5174
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5175
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5177
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5178
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setShouldShowSystemDecors(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5182
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5187
    throw p1
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5111
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5112
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5114
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5115
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setShouldShowWithInsecureKeyguard(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5119
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    throw p1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3570
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3572
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3574
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3575
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3579
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3584
    throw p1
.end method

.method public setSwitchingUser(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3365
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3366
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3367
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3369
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3370
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setSwitchingUser(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3374
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3379
    throw p1
.end method

.method public setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5996
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5998
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5999
    invoke-virtual {p1, v0, v2}, Landroid/view/TaskTransitionSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6002
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6004
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6006
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6007
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6011
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6016
    throw p1
.end method

.method public setWindowingMode(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4972
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4974
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4975
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->setWindowingMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4979
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4984
    throw p1
.end method

.method public shouldShowSystemDecors(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5145
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5146
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->shouldShowSystemDecors(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5153
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5155
    throw p1
.end method

.method public shouldShowWithInsecureKeyguard(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5078
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5080
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5082
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5083
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->shouldShowWithInsecureKeyguard(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5090
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5092
    throw p1
.end method

.method public showGlobalActions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5506
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5507
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5509
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5510
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->showGlobalActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5514
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5519
    throw v2
.end method

.method public showStrictModeViolation(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3545
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3546
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3547
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3549
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3550
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3554
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3559
    throw p1
.end method

.method public startFreezingScreen(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3185
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3186
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->startFreezingScreen(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3190
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3195
    throw p1
.end method

.method public startViewServer(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2576
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2578
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2579
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->startViewServer(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2582
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    move v3, v4

    .line 2586
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2588
    throw p1
.end method

.method public startWindowTrace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4837
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4838
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4840
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4841
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->startWindowTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4850
    throw v2
.end method

.method public stopFreezingScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3203
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3205
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3206
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->stopFreezingScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3210
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    throw v2
.end method

.method public stopViewServer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2598
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2599
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2601
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2602
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->stopViewServer()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2605
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2606
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2609
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2611
    throw v2
.end method

.method public stopWindowTrace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4861
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4863
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4864
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->stopWindowTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4868
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4873
    throw v2
.end method

.method public syncInputTransactions(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5301
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5302
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5303
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5305
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5306
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5310
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5315
    throw p1
.end method

.method public thawDisplayRotation(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3874
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3876
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3877
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->thawDisplayRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3881
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3886
    throw p1
.end method

.method public thawRotation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3788
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3789
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3791
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3792
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3796
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3801
    throw v2
.end method

.method public unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5921
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5922
    invoke-interface {p1}, Landroid/view/ICrossWindowBlurEnabledListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5923
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5925
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5926
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5930
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5935
    throw p1
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4762
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4763
    invoke-interface {p1}, Landroid/view/IDisplayFoldListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4764
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4766
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4767
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4771
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    throw p1
.end method

.method public unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4814
    invoke-interface {p1}, Landroid/view/IDisplayWindowListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4815
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4817
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4818
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4822
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4827
    throw p1
.end method

.method public unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4118
    invoke-interface {p1}, Landroid/view/ISystemGestureExclusionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4120
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4122
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4123
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4127
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4132
    throw p1
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 4067
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4068
    invoke-interface {p1}, Landroid/view/IWallpaperVisibilityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4070
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4072
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4073
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4077
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4082
    throw p1
.end method

.method public updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5437
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 5440
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5441
    invoke-virtual {p2, v0, v2}, Landroid/view/InsetsVisibilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5444
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5446
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5448
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5449
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5453
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5458
    throw p1
.end method

.method public updateRotation(ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3627
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3628
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3629
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3631
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3632
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3636
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3641
    throw p1
.end method

.method public updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.IWindowManager"

    .line 4211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 4213
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4214
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4216
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4217
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4224
    throw p1
.end method

.method public useBLAST()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 2667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2668
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2670
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2671
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->useBLAST()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2674
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2678
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2680
    throw v2
.end method

.method public verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 5651
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5653
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5654
    invoke-virtual {p1, v0, v2}, Landroid/view/displayhash/DisplayHash;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5657
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5659
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5661
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5662
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 5665
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5667
    sget-object p1, Landroid/view/displayhash/VerifiedDisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/displayhash/VerifiedDisplayHash;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 5674
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5676
    throw p1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 3681
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3682
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3684
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3686
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3687
    invoke-static {}, Landroid/view/IWindowManager$Stub;->getDefaultImpl()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3690
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3696
    throw p1
.end method
