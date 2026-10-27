.class Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMusicRecognizeEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.musicrecognize.IMusicRecognizeEventListener"

    return-object v0
.end method

.method public onError(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.musicrecognize.IMusicRecognizeEventListener"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw p1
.end method

.method public onFindCoverEvent(Ljava/lang/String;)V
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
    const-string v1, "com.xiaopeng.xuimanager.musicrecognize.IMusicRecognizeEventListener"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onFindCoverEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw p1
.end method

.method public onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
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
    const-string v1, "com.xiaopeng.xuimanager.musicrecognize.IMusicRecognizeEventListener"

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;->onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw p1
.end method
