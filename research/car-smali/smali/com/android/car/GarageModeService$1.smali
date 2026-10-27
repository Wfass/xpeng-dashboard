.class Lcom/android/car/GarageModeService$1;
.super Landroid/car/settings/GarageModeSettingsObserver;
.source "GarageModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/GarageModeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/DeviceIdleControllerWrapper;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/GarageModeService;


# direct methods
.method constructor <init>(Lcom/android/car/GarageModeService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/GarageModeService;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/car/GarageModeService$1;->this$0:Lcom/android/car/GarageModeService;

    invoke-direct {p0, p2, p3}, Landroid/car/settings/GarageModeSettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 135
    iget-object v0, p0, Lcom/android/car/GarageModeService$1;->this$0:Lcom/android/car/GarageModeService;

    invoke-static {v0, p2}, Lcom/android/car/GarageModeService;->access$300(Lcom/android/car/GarageModeService;Landroid/net/Uri;)V

    .line 136
    return-void
.end method
