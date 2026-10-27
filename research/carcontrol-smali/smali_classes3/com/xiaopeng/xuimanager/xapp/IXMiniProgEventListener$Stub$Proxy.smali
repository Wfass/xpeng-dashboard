.class Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IXMiniProgEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.xapp.IXMiniProgEventListener"

    return-object v0
.end method

.method public onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.xapp.IXMiniProgEventListener"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-static {}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;->onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p1
.end method
