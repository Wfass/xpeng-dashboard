.class public Lcom/android/car/permission/CarPermissionManager;
.super Ljava/lang/Object;
.source "CarPermissionManager.java"


# static fields
.field private static mService:Lcom/android/car/permission/CarPermissionManagerService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/car/permission/CarPermissionManagerService;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/car/permission/CarPermissionManager;->mService:Lcom/android/car/permission/CarPermissionManagerService;

    if-nez v0, :cond_0

    .line 16
    const-class v0, Lcom/android/car/permission/CarPermissionManagerService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/CarPermissionManagerService;

    sput-object v0, Lcom/android/car/permission/CarPermissionManager;->mService:Lcom/android/car/permission/CarPermissionManagerService;

    .line 18
    :cond_0
    sget-object v0, Lcom/android/car/permission/CarPermissionManager;->mService:Lcom/android/car/permission/CarPermissionManagerService;

    return-object v0
.end method
