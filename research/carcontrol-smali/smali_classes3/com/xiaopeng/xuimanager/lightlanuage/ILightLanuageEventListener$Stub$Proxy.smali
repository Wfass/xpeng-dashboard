.class Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILightLanuageEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    return-object v0
.end method

.method public onErrorEvent(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onErrorEvent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw p1
.end method

.method public onFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw p1
.end method

.method public onStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw p1
.end method

.method public onStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw p1
.end method

.method public onUpgradeEvent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuageEventListener"

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->onUpgradeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw p1
.end method
