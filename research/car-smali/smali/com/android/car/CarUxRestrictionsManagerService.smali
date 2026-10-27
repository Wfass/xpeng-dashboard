.class public Lcom/android/car/CarUxRestrictionsManagerService;
.super Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.source "CarUxRestrictionsManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_TRANSITION_LOG_SIZE:I = 0x14

.field private static final PROPERTY_UPDATE_RATE:I = 0x5

.field private static final SPEED_NOT_AVAILABLE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "CarUxR"


# instance fields
.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMovingSpeed:F

.field private mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

.field private final mDrivingStateService:Lcom/android/car/CarDrivingStateService;

.field private mFallbackToDefaults:Z

.field private final mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

.field private final mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mTransitionLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Utils$TransitionLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mUxRClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarDrivingStateService;Lcom/android/car/CarPropertyService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drvService"    # Lcom/android/car/CarDrivingStateService;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 68
    invoke-direct {p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    .line 296
    new-instance v0, Lcom/android/car/CarUxRestrictionsManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarUxRestrictionsManagerService$1;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 343
    new-instance v0, Lcom/android/car/CarUxRestrictionsManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarUxRestrictionsManagerService$2;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 69
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 71
    iput-object p3, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 72
    new-instance v0, Lcom/android/car/CarUxRestrictionsServiceHelper;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    invoke-direct {v0, v1, v2}, Lcom/android/car/CarUxRestrictionsServiceHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    .line 76
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarUxRestrictionsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 47
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p1, "x1"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDrivingStateEvent(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarUxRestrictionsManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p1, "x1"    # F

    .line 47
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleSpeedChange(F)V

    return-void
.end method

.method private addTransitionLog(Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "timestamp"    # J
    .param p6, "extra"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 446
    :cond_0
    new-instance v0, Lcom/android/car/Utils$TransitionLog;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJLjava/lang/String;)V

    .line 447
    .local v0, "tLog":Lcom/android/car/Utils$TransitionLog;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method private findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    .line 183
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 184
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 185
    .local v2, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-virtual {v2, v0}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    return-object v2

    .line 188
    .end local v2    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCurrentSpeed()Ljava/lang/Float;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x11600207

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 125
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    return-object v1

    .line 128
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 3
    .param p1, "drivingState"    # I

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "requiresOpt":Z
    packed-switch p1, :pswitch_data_0

    .line 435
    const/16 v1, 0x1ff

    .line 436
    .local v1, "restrictions":I
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "restrictions":I
    :pswitch_0
    const/4 v1, 0x0

    .line 431
    .restart local v1    # "restrictions":I
    const/4 v0, 0x1

    .line 432
    goto :goto_0

    .line 427
    .end local v1    # "restrictions":I
    :pswitch_1
    const/4 v1, 0x0

    .line 428
    .restart local v1    # "restrictions":I
    nop

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized handleDispatchUxRestrictions(IF)V
    .locals 10
    .param p1, "currentDrivingState"    # I
    .param p2, "speed"    # F

    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mFallbackToDefaults:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->getDefaultRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .local v0, "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    goto :goto_0

    .line 386
    .end local v0    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/CarUxRestrictionsServiceHelper;->getUxRestrictions(IF)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 398
    .restart local v0    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v1, v0}, Landroid/car/drivingstate/CarUxRestrictions;->isSameRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 400
    monitor-exit p0

    return-void

    .line 403
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v1, "extraInfo":Ljava/lang/StringBuilder;
    nop

    .line 405
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DO -> "

    goto :goto_1

    .line 406
    :cond_2
    const-string v2, "No DO -> "

    .line 404
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    nop

    .line 408
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DO"

    goto :goto_2

    :cond_3
    const-string v2, "No DO"

    .line 407
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v4, "CarUxR"

    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v5

    .line 410
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 409
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/car/CarUxRestrictionsManagerService;->addTransitionLog(Ljava/lang/String;IIJLjava/lang/String;)V

    .line 413
    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 417
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 418
    .local v3, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-virtual {v3, v0}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->dispatchEventToClients(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    .end local v3    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    goto :goto_3

    .line 420
    :cond_4
    monitor-exit p0

    return-void

    .line 382
    .end local v0    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    .end local v1    # "extraInfo":Ljava/lang/StringBuilder;
    .end local p1    # "currentDrivingState":I
    .end local p2    # "speed":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw p1
.end method

.method private declared-synchronized handleDrivingStateEvent(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    monitor-enter p0

    .line 313
    if-nez p1, :cond_0

    .line 314
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 317
    .local v0, "drivingState":I
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v1

    .line 319
    .local v1, "speed":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    goto :goto_1

    .line 321
    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    const-string v2, "CarUxR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected:  Speed null when driving state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 328
    :cond_3
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    .line 336
    :goto_1
    iget v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 312
    .end local v0    # "drivingState":I
    .end local v1    # "speed":Ljava/lang/Float;
    .end local p1    # "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw p1
.end method

.method private declared-synchronized handleSpeedChange(F)V
    .locals 2
    .param p1, "newSpeed"    # F

    monitor-enter p0

    .line 359
    :try_start_0
    iget v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 361
    monitor-exit p0

    return-void

    .line 363
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iget v0, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    .local v0, "currentDrivingState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 366
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    .line 369
    invoke-direct {p0, v0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 358
    .end local v0    # "currentDrivingState":I
    .end local p1    # "newSpeed":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw p1
.end method

.method private initializeUxRestrictions()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 103
    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    .line 107
    .local v0, "currentDrivingStateEvent":Landroid/car/drivingstate/CarDrivingStateEvent;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget v1, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 112
    .local v1, "currentDrivingState":I
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v2

    .line 113
    .local v2, "currentSpeed":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 114
    return-void

    .line 119
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V

    .line 120
    return-void

    .line 109
    .end local v1    # "currentDrivingState":I
    .end local v2    # "currentSpeed":Ljava/lang/Float;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requires DO? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 283
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current UXR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->dump(Ljava/io/PrintWriter;)V

    .line 286
    const-string v0, "UX Restriction change log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Utils$TransitionLog;

    .line 288
    .local v1, "tlog":Lcom/android/car/Utils$TransitionLog;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    .end local v1    # "tlog":Lcom/android/car/Utils$TransitionLog;
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public declared-synchronized getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw v0
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 83
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mHelper:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-virtual {v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->loadUxRestrictionsFromXml()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "CarUxR"

    const-string v2, "Error reading Ux Restrictions Mapping. Falling back to defaults"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mFallbackToDefaults:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CarUxR"

    const-string v3, "Exception reading UX restrictions XML mapping"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iput-boolean v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mFallbackToDefaults:Z

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x11600207

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->initializeUxRestrictions()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 82
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw v0
.end method

.method public declared-synchronized registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    monitor-enter p0

    .line 152
    if-eqz p1, :cond_1

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    move-result-object v0

    .line 161
    .local v0, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    if-nez v0, :cond_0

    .line 162
    new-instance v1, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 164
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CarUxR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot link death recipient to binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 134
    .local v1, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->access$000(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 135
    .end local v1    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw v0
.end method

.method public declared-synchronized unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    monitor-enter p0

    .line 200
    if-eqz p1, :cond_1

    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    move-result-object v0

    .line 206
    .local v0, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    if-nez v0, :cond_0

    .line 207
    const-string v1, "CarUxR"

    const-string v2, "unregisterUxRestrictionsChangeListener(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 212
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    :cond_1
    :try_start_2
    const-string v0, "CarUxR"

    const-string v1, "unregisterUxRestrictionsChangeListener(): listener null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    throw p1
.end method
