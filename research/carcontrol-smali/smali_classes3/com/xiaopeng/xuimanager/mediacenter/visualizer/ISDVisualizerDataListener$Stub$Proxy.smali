.class Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISDVisualizerDataListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OnFftDataCapture(ILjava/lang/String;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->OnFftDataCapture(ILjava/lang/String;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw p1
.end method

.method public OnRatioData(ILjava/lang/String;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 149
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 150
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->OnRatioData(ILjava/lang/String;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    return-object v0
.end method
