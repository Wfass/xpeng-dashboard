.class Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioCaptureListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IAudioCaptureListener"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->OnFftDataCapture([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw p1
.end method

.method public OnRatioData(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IAudioCaptureListener"

    .line 135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->OnRatioData(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IAudioCaptureListener"

    return-object v0
.end method
