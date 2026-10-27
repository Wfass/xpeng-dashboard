.class Lcom/android/internal/car/CarServiceHelperService$1;
.super Ljava/lang/Object;
.source "CarServiceHelperService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/car/CarServiceHelperService;


# direct methods
.method constructor <init>(Lcom/android/internal/car/CarServiceHelperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 43
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 47
    const-string v0, "CarServiceHelper"

    const-string v1, "**CarService connected**"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v0, p2}, Lcom/android/internal/car/CarServiceHelperService;->access$102(Lcom/android/internal/car/CarServiceHelperService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v1}, Lcom/android/internal/car/CarServiceHelperService;->access$200(Lcom/android/internal/car/CarServiceHelperService;)Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v1}, Lcom/android/internal/car/CarServiceHelperService;->access$100(Lcom/android/internal/car/CarServiceHelperService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarServiceHelper"

    const-string v3, "RemoteException from car service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/internal/car/CarServiceHelperService;->access$300(Lcom/android/internal/car/CarServiceHelperService;)V

    .line 62
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 66
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v0}, Lcom/android/internal/car/CarServiceHelperService;->access$300(Lcom/android/internal/car/CarServiceHelperService;)V

    .line 67
    return-void
.end method
