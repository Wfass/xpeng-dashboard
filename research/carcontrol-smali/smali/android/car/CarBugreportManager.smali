.class public final Landroid/car/CarBugreportManager;
.super Landroid/car/CarManagerBase;
.source "CarBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;,
        Landroid/car/CarBugreportManager$CarBugreportManagerCallback;
    }
.end annotation


# instance fields
.field private mService:Landroid/car/ICarBugreportService;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 156
    invoke-static {p2}, Landroid/car/ICarBugreportService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBugreportService;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarBugreportManager;->mService:Landroid/car/ICarBugreportService;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "car_bugreport"

    return-object v0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarBugreportManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "car_bugreport"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/ICarBugreportService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBugreportService;

    move-result-object v0

    iput-object v0, p0, Landroid/car/CarBugreportManager;->mService:Landroid/car/ICarBugreportService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {p0, v0}, Landroid/car/CarBugreportManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/CarBugreportManager$CarBugreportManagerCallback;)V
    .locals 2

    .line 191
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :try_start_0
    new-instance v0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;

    .line 196
    invoke-virtual {p0}, Landroid/car/CarBugreportManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;-><init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;Landroid/os/Handler;)V

    .line 197
    iget-object p3, p0, Landroid/car/CarBugreportManager;->mService:Landroid/car/ICarBugreportService;

    invoke-interface {p3, p1, p2, v0}, Landroid/car/ICarBugreportService;->requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    .line 199
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/car/CarBugreportManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 201
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p3
.end method
