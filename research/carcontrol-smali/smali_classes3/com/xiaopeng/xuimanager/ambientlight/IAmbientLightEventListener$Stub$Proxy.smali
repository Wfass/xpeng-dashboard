.class Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAmbientLightEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.ambientlight.IAmbientLightEventListener"

    return-object v0
.end method

.method public onAmbientLightSetEvent(ILjava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.ambientlight.IAmbientLightEventListener"

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw p1
.end method

.method public onError(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.ambientlight.IAmbientLightEventListener"

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw p1
.end method
