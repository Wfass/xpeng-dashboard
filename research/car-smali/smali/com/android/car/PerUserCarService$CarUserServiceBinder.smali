.class final Lcom/android/car/PerUserCarService$CarUserServiceBinder;
.super Landroid/car/ICarUserService$Stub;
.source "PerUserCarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PerUserCarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarUserServiceBinder"
.end annotation


# instance fields
.field private mCarUserService:Lcom/android/car/PerUserCarService;

.field final synthetic this$0:Lcom/android/car/PerUserCarService;


# direct methods
.method public constructor <init>(Lcom/android/car/PerUserCarService;Lcom/android/car/PerUserCarService;)V
    .locals 0
    .param p2, "service"    # Lcom/android/car/PerUserCarService;

    .line 90
    iput-object p1, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-direct {p0}, Landroid/car/ICarUserService$Stub;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->mCarUserService:Lcom/android/car/PerUserCarService;

    .line 92
    return-void
.end method


# virtual methods
.method public getBluetoothUserService()Landroid/car/ICarBluetoothUserService;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-static {v0}, Lcom/android/car/PerUserCarService;->access$000(Lcom/android/car/PerUserCarService;)Lcom/android/car/CarBluetoothUserService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->mCarUserService:Lcom/android/car/PerUserCarService;

    invoke-virtual {v0}, Lcom/android/car/PerUserCarService;->createBluetoothUserService()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;->this$0:Lcom/android/car/PerUserCarService;

    invoke-static {v0}, Lcom/android/car/PerUserCarService;->access$000(Lcom/android/car/PerUserCarService;)Lcom/android/car/CarBluetoothUserService;

    move-result-object v0

    return-object v0
.end method
