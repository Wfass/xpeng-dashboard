.class Lcom/android/car/pm/ActivityBlockingActivity$1;
.super Ljava/lang/Object;
.source "ActivityBlockingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/pm/ActivityBlockingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/ActivityBlockingActivity;


# direct methods
.method constructor <init>(Lcom/android/car/pm/ActivityBlockingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/pm/ActivityBlockingActivity;

    .line 74
    iput-object p1, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onServiceConnected$0(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/car/pm/ActivityBlockingActivity;
    .param p1, "x$0"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 87
    invoke-static {p0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$400(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-static {v0}, Lcom/android/car/pm/ActivityBlockingActivity;->access$000(Lcom/android/car/pm/ActivityBlockingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-static {v0}, Lcom/android/car/pm/ActivityBlockingActivity;->access$100(Lcom/android/car/pm/ActivityBlockingActivity;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    iget-object v1, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-static {v1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$300(Lcom/android/car/pm/ActivityBlockingActivity;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "uxrestriction"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-static {v0, v1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$202(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 86
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    iget-object v1, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-static {v1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$200(Lcom/android/car/pm/ActivityBlockingActivity;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$400(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 87
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-static {v0}, Lcom/android/car/pm/ActivityBlockingActivity;->access$200(Lcom/android/car/pm/ActivityBlockingActivity;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    new-instance v2, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$1$VycS7TnF0M8HIgPYUraE2XJH6W4;

    invoke-direct {v2, v1}, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$1$VycS7TnF0M8HIgPYUraE2XJH6W4;-><init>(Lcom/android/car/pm/ActivityBlockingActivity;)V

    invoke-virtual {v0, v2}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CAR.AM"

    const-string v2, "Failed to get CarUxRestrictionsManager"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 95
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    invoke-virtual {v0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 96
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity$1;->this$0:Lcom/android/car/pm/ActivityBlockingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/pm/ActivityBlockingActivity;->access$202(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 97
    return-void
.end method
