.class public Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
.super Ljava/lang/Object;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopTaskInfoContainer"
.end annotation


# instance fields
.field public final stackInfo:Landroid/app/ActivityManager$StackInfo;

.field public final taskId:I

.field public final topActivity:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;ILandroid/app/ActivityManager$StackInfo;)V
    .locals 0
    .param p1, "topActivity"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "stackInfo"    # Landroid/app/ActivityManager$StackInfo;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 64
    iput p2, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    .line 65
    iput-object p3, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;ILandroid/app/ActivityManager$StackInfo;Lcom/android/car/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ComponentName;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/app/ActivityManager$StackInfo;
    .param p4, "x3"    # Lcom/android/car/SystemActivityMonitoringService$1;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;-><init>(Landroid/content/ComponentName;ILandroid/app/ActivityManager$StackInfo;)V

    return-void
.end method


# virtual methods
.method public isMatching(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)Z
    .locals 2
    .param p1, "taskInfo"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 70
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    iget v1, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v0, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v1, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v1, v1, Landroid/app/ActivityManager$StackInfo;->userId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 77
    const-string v0, "TaskInfoContainer [topActivity=%s, taskId=%d, stackId=%d, userId=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v2, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v2, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
