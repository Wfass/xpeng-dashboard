.class public Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
.super Ljava/lang/Object;
.source "CarPretreatTask.java"


# static fields
.field public static final HV_POWER_DURATION_TIME_SECOND:I = 0x1c20

.field private static final TAG:Ljava/lang/String; = "CarPretreatTask"


# instance fields
.field private mCostTime:J
    .annotation build Landroid/car/xpeng/ai/annotation/TaskTime;
    .end annotation
.end field

.field private mDurationTime:J
    .annotation build Landroid/car/xpeng/ai/annotation/TaskTime;
    .end annotation
.end field

.field private mIsHVPower:Z

.field private mState:I

.field private mTaskId:Ljava/lang/String;
    .annotation build Landroid/car/xpeng/ai/annotation/TaskId;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mTaskId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getCostTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mCostTime:J

    return-wide v0
.end method

.method public getDurationTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mDurationTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mState:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public isHVPower()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mIsHVPower:Z

    return v0
.end method

.method public setCostTime(J)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 0
    .param p1, "costTime"    # J

    .line 61
    iput-wide p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mCostTime:J

    .line 62
    return-object p0
.end method

.method public setDurationTime(J)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 0
    .param p1, "durationTime"    # J

    .line 70
    iput-wide p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mDurationTime:J

    .line 71
    return-object p0
.end method

.method public setHVPower(Z)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 0
    .param p1, "HVPower"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mIsHVPower:Z

    .line 53
    return-object p0
.end method

.method public setState(I)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 0
    .param p1, "state"    # I

    .line 79
    iput p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mState:I

    .line 80
    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->mTaskId:Ljava/lang/String;

    .line 44
    return-object p0
.end method
