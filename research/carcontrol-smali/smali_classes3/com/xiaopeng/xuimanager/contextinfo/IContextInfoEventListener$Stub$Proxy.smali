.class Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContextInfoEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    return-object v0
.end method

.method public onATLSStatus(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1078
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1084
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onATLSStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    throw p1
.end method

.method public onAccelerationEvent(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 598
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 600
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAccelerationEvent(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw p1
.end method

.method public onAngularVelocityEvent(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 616
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 618
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAngularVelocityEvent(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 628
    throw p1
.end method

.method public onAutoBrightness(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 985
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 991
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAutoBrightness(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 998
    throw p1
.end method

.method public onAvpWifi(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1023
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onAvpWifi(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1035
    throw p1
.end method

.method public onBcmLightMode(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1193
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onBcmLightMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    throw p1
.end method

.method public onBeltStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1097
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1102
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onBeltStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1109
    throw p1
.end method

.method public onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 734
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 745
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 746
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw p1
.end method

.method public onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 759
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 761
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 771
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    throw p1
.end method

.method public onCarSpeed(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 949
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 951
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 954
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCarSpeed(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    throw p1
.end method

.method public onChargingGunStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1138
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onChargingGunStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw p1
.end method

.method public onCommonEvent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1263
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1269
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCommonEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    throw p1
.end method

.method public onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 809
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 821
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    throw p1
.end method

.method public onDeviceChargeStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1151
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1156
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onDeviceChargeStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    throw p1
.end method

.method public onDriverSeatStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1169
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1174
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onDriverSeatStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1181
    throw p1
.end method

.method public onError(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1282
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1287
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1288
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    throw p1
.end method

.method public onGearChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 931
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 936
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onGearChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw p1
.end method

.method public onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1337
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1338
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    throw p1
.end method

.method public onIGStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 967
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 972
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onIGStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw p1
.end method

.method public onLLUStatus(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1059
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLLUStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1072
    throw p1
.end method

.method public onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 709
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 721
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    throw p1
.end method

.method public onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 834
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 836
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 846
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    throw p1
.end method

.method public onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 634
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 646
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw p1
.end method

.method public onMsgEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 895
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 899
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 900
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onMsgEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    throw p1
.end method

.method public onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 696
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw p1
.end method

.method public onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1301
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1303
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1307
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1313
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1320
    throw p1
.end method

.method public onNavigationEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 877
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 878
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 881
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 882
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNavigationEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 889
    throw p1
.end method

.method public onNavigationInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 859
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 864
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onNavigationInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    throw p1
.end method

.method public onPoiEvent(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1351
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1353
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1356
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPoiEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    throw p1
.end method

.method public onPowerAction(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1120
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPowerAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    throw p1
.end method

.method public onPowerOffCount(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1243
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1247
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPowerOffCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    throw p1
.end method

.method public onPsdMoto(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1225
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1230
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onPsdMoto(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1237
    throw p1
.end method

.method public onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 659
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    throw p1
.end method

.method public onRemoteCommand(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1041
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onRemoteCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1053
    throw p1
.end method

.method public onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 784
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 796
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 803
    throw p1
.end method

.method public onVpmEvent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1206
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1212
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onVpmEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    throw p1
.end method

.method public onWeatherInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 913
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 918
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onWeatherInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw p1
.end method

.method public onXPilotWarning(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 1004
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1010
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;->onXPilotWarning(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    throw p1
.end method
