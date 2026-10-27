.class Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocationServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.lib.framework.locationmodule.ILocationServiceInterface"

    return-object v0
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 5

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.lib.framework.locationmodule.ILocationServiceInterface"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 121
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw p1
.end method

.method public unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 5

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.lib.framework.locationmodule.ILocationServiceInterface"

    .line 135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p1
.end method
