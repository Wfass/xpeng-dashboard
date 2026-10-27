.class Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    return-object v0
.end method

.method public onError(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw p1
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectFinishEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw p1
.end method

.method public onLightEffectShowError(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowError(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw p1
.end method

.method public onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw p1
.end method

.method public onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 208
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw p1
.end method

.method public onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw p1
.end method
