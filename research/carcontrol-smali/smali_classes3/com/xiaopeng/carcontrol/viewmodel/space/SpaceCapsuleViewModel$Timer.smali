.class public Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Timer"
.end annotation


# instance fields
.field private final lastStartTime:J

.field private final remainingTime:J

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "remainingTime"
        }
    .end annotation

    .line 1361
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->lastStartTime:J

    .line 1363
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->remainingTime:J

    return-void
.end method

.method private now()J
    .locals 2

    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getRemainingTime()J
    .locals 6

    .line 1366
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->lastStartTime:J

    sub-long/2addr v0, v2

    .line 1367
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->remainingTime:J

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2
.end method
