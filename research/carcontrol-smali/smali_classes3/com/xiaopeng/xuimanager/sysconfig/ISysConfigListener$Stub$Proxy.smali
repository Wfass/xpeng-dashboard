.class Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISysConfigListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.sysconfig.ISysConfigListener"

    return-object v0
.end method

.method public onSysConfigChanged(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.sysconfig.ISysConfigListener"

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;->onSysConfigChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw p1
.end method
