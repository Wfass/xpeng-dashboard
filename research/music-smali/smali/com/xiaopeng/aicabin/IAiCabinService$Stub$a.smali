.class public Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;
.super Ljava/lang/Object;
.source "IAiCabinService.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/IAiCabinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/IAiCabinService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaopeng/aicabin/IAiCabinService;


# instance fields
.field public b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.aicabin.IAiCabinService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/aicabin/IAiCabinService;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    throw p1
.end method

.method public registerEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.aicabin.IAiCabinService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/aicabin/IAiCabinService;->registerEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1
.end method

.method public transact(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicListener;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.aicabin.IAiCabinService"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p2, v0, v3}, Lcom/xiaopeng/aicabin/DataReq;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 14
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 15
    iget-object v4, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/aicabin/IAiCabinService;->transact(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicListener;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    throw p1
.end method

.method public transactSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.aicabin.IAiCabinService"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/aicabin/DataReq;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/aicabin/IAiCabinService;->transactSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 29
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    sget-object p1, Lcom/xiaopeng/aicabin/DataResp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aicabin/DataResp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p1
.end method

.method public unregisterEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.aicabin.IAiCabinService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    iget-object v2, p0, Lcom/xiaopeng/aicabin/IAiCabinService$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/IAiCabinService$Stub;->getDefaultImpl()Lcom/xiaopeng/aicabin/IAiCabinService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/aicabin/IAiCabinService;->unregisterEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw p1
.end method
