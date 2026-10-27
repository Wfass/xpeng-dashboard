.class public Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;
.super Ljava/lang/Object;
.source "CarPretreatTaskRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarPretreatTaskRunnable"


# instance fields
.field private mCarPretreatTask:Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

.field private mListener:Lcom/android/car/xpeng/ai/scene/CarSceneListener;


# direct methods
.method public constructor <init>(Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;Lcom/android/car/xpeng/ai/scene/CarSceneListener;)V
    .locals 0
    .param p1, "task"    # Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .param p2, "listener"    # Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;->mCarPretreatTask:Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 14
    iput-object p2, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;->mListener:Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 15
    return-void
.end method

.method private handleCarPretreatTask()V
    .locals 0

    .line 34
    return-void
.end method


# virtual methods
.method public getControlTask()Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;->mCarPretreatTask:Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    return-object v0
.end method

.method public run()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;->handleCarPretreatTask()V

    .line 31
    return-void
.end method

.method public setControlTask(Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;
    .locals 0
    .param p1, "carPretreatTask"    # Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 41
    iput-object p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;->mCarPretreatTask:Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 42
    return-object p0
.end method
