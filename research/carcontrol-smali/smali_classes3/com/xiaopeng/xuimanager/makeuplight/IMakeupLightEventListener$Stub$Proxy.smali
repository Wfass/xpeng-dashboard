.class Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMakeupLightEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"

    return-object v0
.end method

.method public onAvailableEvent(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onAvailableEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw p1
.end method

.method public onColorTemperatureEvent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onColorTemperatureEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p1
.end method

.method public onEffectEvent(Ljava/lang/String;I)V
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
    const-string v1, "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onEffectEvent(Ljava/lang/String;I)V
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

.method public onLuminanceEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.makeuplight.IMakeupLightEventListener"

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;->onLuminanceEvent(I)V
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
