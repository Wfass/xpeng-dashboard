.class Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPlaybackInfoListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
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
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw p1
.end method

.method public OnPlaybackChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnPlaybackChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw p1
.end method

.method public OnUpdatePosition(IJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object v2

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnUpdatePosition(IJJ)V
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

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    return-object v0
.end method
