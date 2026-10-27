.class Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageParsingEventReceiver"
.end annotation


# static fields
.field private static final PACKAGE_PARSING_DELAY_MS:J = 0x1f4L


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/CarPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0

    .line 1246
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p2, "x1"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;-><init>(Lcom/android/car/pm/CarPackageManagerService;)V

    return-void
.end method

.method private isPackageManagerAction(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 1268
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$3300(Lcom/android/car/pm/CarPackageManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logEventChange(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1277
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1251
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1258
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;->isPackageManagerAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    invoke-direct {p0, p2}, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;->logEventChange(Landroid/content/Intent;)V

    .line 1263
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$PackageParsingEventReceiver;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService;->access$3000(Lcom/android/car/pm/CarPackageManagerService;)Lcom/android/car/pm/CarPackageManagerService$PackageHandler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/android/car/pm/CarPackageManagerService$PackageHandler;->access$3100(Lcom/android/car/pm/CarPackageManagerService$PackageHandler;J)V

    .line 1265
    :cond_1
    return-void

    .line 1252
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
