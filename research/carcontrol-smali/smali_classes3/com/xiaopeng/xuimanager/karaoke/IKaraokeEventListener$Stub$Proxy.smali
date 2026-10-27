.class Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKaraokeEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public MicDevChangeCallBack(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    return-object v0
.end method

.method public onError(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    throw p1
.end method

.method public volumeEffectCallBack(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->volumeEffectCallBack(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw p1
.end method
