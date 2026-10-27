.class Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAvrcpEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    return-object v0
.end method

.method public onConnectedChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->onConnectedChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw p1
.end method

.method public onMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 203
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 205
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->onMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 218
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw p1
.end method

.method public onPlaybackChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 160
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->onPlaybackChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p1
.end method

.method public onPositionChanged(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 181
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->onPositionChanged(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw p1
.end method
