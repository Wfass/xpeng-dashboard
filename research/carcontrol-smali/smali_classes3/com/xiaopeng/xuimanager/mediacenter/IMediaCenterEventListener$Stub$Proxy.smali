.class Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaCenterEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IMediaCenterEventListener"

    return-object v0
.end method

.method public onError(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenterEventListener"

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;->onError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw p1
.end method
