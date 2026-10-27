.class public final synthetic Lcom/android/car/permission/-$$Lambda$CarPermissionManagerService$-3g3YECwVnfJD8SXSUhISA2q5Vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/permission/CarPermissionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/permission/CarPermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/permission/-$$Lambda$CarPermissionManagerService$-3g3YECwVnfJD8SXSUhISA2q5Vw;->f$0:Lcom/android/car/permission/CarPermissionManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/permission/-$$Lambda$CarPermissionManagerService$-3g3YECwVnfJD8SXSUhISA2q5Vw;->f$0:Lcom/android/car/permission/CarPermissionManagerService;

    invoke-static {v0}, Lcom/android/car/permission/CarPermissionManagerService;->lambda$initCarPermissionData$0(Lcom/android/car/permission/CarPermissionManagerService;)V

    return-void
.end method
