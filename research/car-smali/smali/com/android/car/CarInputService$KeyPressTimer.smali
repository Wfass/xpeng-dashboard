.class final Lcom/android/car/CarInputService$KeyPressTimer;
.super Ljava/lang/Object;
.source "CarInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyPressTimer"
.end annotation


# static fields
.field private static final LONG_PRESS_TIME_MS:J = 0x3e8L


# instance fields
.field private mDown:Z

.field private mDuration:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDuration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarInputService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarInputService$1;

    .line 59
    invoke-direct {p0}, Lcom/android/car/CarInputService$KeyPressTimer;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized isLongPress()Z
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    if-nez v0, :cond_1

    .line 82
    iget-wide v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 80
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t query press length during key down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarInputService$KeyPressTimer;
    throw v0
.end method

.method declared-synchronized keyDown()V
    .locals 2

    monitor-enter p0

    .line 66
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarInputService$KeyPressTimer;
    throw v0
.end method

.method declared-synchronized keyUp()V
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDuration:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key can\'t go up without being down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarInputService$KeyPressTimer;
    throw v0
.end method
