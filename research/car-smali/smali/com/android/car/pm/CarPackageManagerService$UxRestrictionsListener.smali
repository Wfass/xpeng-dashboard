.class Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
.super Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UxRestrictionsListener"
.end annotation


# instance fields
.field private mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/pm/CarPackageManagerService;

.field private final uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/CarUxRestrictionsManagerService;)V
    .locals 0
    .param p2, "service"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 1167
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-direct {p0}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;-><init>()V

    .line 1168
    iput-object p2, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 1169
    iget-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {p1}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1170
    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 1161
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->checkIfTopActivityNeedsBlocking()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 1161
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->isRestricted()Z

    move-result v0

    return v0
.end method

.method private checkIfTopActivityNeedsBlocking()V
    .locals 2

    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "shouldCheck":Z
    monitor-enter p0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1196
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    const/4 v0, 0x1

    .line 1199
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    if-eqz v0, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService;->access$2900(Lcom/android/car/pm/CarPackageManagerService;)V

    .line 1206
    :cond_1
    return-void

    .line 1199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized isRestricted()Z
    .locals 1

    monitor-enter p0

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1219
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    throw v0
.end method


# virtual methods
.method public onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 1182
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2800(Lcom/android/car/pm/CarPackageManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    return-void

    .line 1186
    :cond_0
    monitor-enter p0

    .line 1187
    :try_start_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-direct {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions;-><init>(Landroid/car/drivingstate/CarUxRestrictions;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1188
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->checkIfTopActivityNeedsBlocking()V

    .line 1190
    return-void

    .line 1188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
