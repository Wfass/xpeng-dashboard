.class Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISrListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sr/ISrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/sr/ISrListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.sr.ISrListener"

    return-object v0
.end method

.method public onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.sr.ISrListener"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/sr/SrIcon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-static {}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener;->onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw p1
.end method

.method public onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.sr.ISrListener"

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xuimanager/sr/SrIcon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener;->onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
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
