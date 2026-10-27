.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler$1;
.super Landroid/database/ContentObserver;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;


# direct methods
.method constructor <init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 361
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$1;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$1;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->access$000(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;)V

    .line 365
    return-void
.end method
