.class final Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "UtilsActivityLifecycleImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field private static final STUB:Landroid/app/Activity;


# instance fields
.field private final mActivityLifecycleCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field private mForegroundCount:I

.field private mIsBackground:Z

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 41
    new-instance v0, Landroid/app/Activity;

    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 44
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    .line 45
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 32
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 105
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    .local v0, "callbacksList":Ljava/util/List;, "Ljava/util/List<Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;>;"
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 112
    :cond_1
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 149
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    sget-object v1, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    .line 151
    return-void
.end method

.method private consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;>;"
    if-nez p3, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 156
    .local v1, "listener":Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
    invoke-virtual {v1, p1, p2}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onLifecycleChanged(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 157
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;)V

    goto :goto_1

    .line 159
    :cond_1
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_1

    .line 161
    :cond_2
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_1

    .line 163
    :cond_3
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_1

    .line 165
    :cond_4
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_1

    .line 167
    :cond_5
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 170
    .end local v1    # "listener":Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
    :cond_6
    :goto_1
    goto :goto_0

    .line 171
    :cond_7
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_8
    return-void
.end method

.method private getActivitiesByReflect()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 370
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/Activity;>;"
    const/4 v1, 0x0

    .line 372
    .local v1, "topActivity":Landroid/app/Activity;
    :try_start_0
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    .line 373
    .local v2, "activityThread":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 374
    .local v3, "mActivitiesField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 375
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 376
    .local v5, "mActivities":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map;

    if-nez v6, :cond_0

    .line 377
    return-object v0

    .line 379
    :cond_0
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    .line 380
    .local v6, "binder_activityClientRecord_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 381
    .local v8, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 382
    .local v9, "activityClientRecordClass":Ljava/lang/Class;
    const-string v10, "activity"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 383
    .local v10, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    .line 385
    .local v11, "activity":Landroid/app/Activity;
    if-nez v1, :cond_2

    .line 386
    const-string v12, "paused"

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 387
    .local v12, "pausedField":Ljava/lang/reflect/Field;
    invoke-virtual {v12, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 388
    invoke-virtual {v12, v8}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 389
    move-object v1, v11

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v12    # "pausedField":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 394
    :cond_2
    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v8    # "activityRecord":Ljava/lang/Object;
    .end local v9    # "activityClientRecordClass":Ljava/lang/Class;
    .end local v10    # "activityField":Ljava/lang/reflect/Field;
    .end local v11    # "activity":Landroid/app/Activity;
    :goto_2
    goto :goto_0

    .line 399
    .end local v2    # "activityThread":Ljava/lang/Object;
    .end local v3    # "mActivitiesField":Ljava/lang/reflect/Field;
    .end local v5    # "mActivities":Ljava/lang/Object;
    .end local v6    # "binder_activityClientRecord_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    goto :goto_3

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UtilsActivityLifecycle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivitiesByReflect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 403
    :cond_4
    return-object v0
.end method

.method private getActivityThread()Ljava/lang/Object;
    .locals 2

    .line 407
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "activityThread":Ljava/lang/Object;
    if-eqz v0, :cond_0

    return-object v0

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .locals 5

    .line 414
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 415
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string v2, "sCurrentActivityThread"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 416
    .local v2, "sCurrentActivityThreadField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 417
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 418
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    .end local v2    # "sCurrentActivityThreadField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UtilsActivityLifecycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityThreadInActivityThreadStaticField: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .locals 5

    .line 426
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 427
    .local v1, "activityThreadClass":Ljava/lang/Class;
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 428
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UtilsActivityLifecycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v0
.end method

.method private postStatus(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isForeground"    # Z

    .line 344
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;

    .line 346
    .local v1, "statusListener":Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;
    if-eqz p2, :cond_1

    .line 347
    invoke-interface {v1, p1}, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;->onForeground(Landroid/app/Activity;)V

    goto :goto_1

    .line 349
    :cond_1
    invoke-interface {v1, p1}, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;->onBackground(Landroid/app/Activity;)V

    .line 351
    .end local v1    # "statusListener":Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;
    :goto_1
    goto :goto_0

    .line 352
    :cond_2
    return-void
.end method

.method private processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isSave"    # Z

    .line 317
    const/16 v0, -0x7b

    if-eqz p2, :cond_0

    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 319
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 320
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 321
    .local v3, "softInputMode":I
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 322
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 323
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "softInputMode":I
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return-void

    .line 326
    :cond_1
    new-instance v1, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    goto :goto_2

    .line 339
    :goto_1
    nop

    .line 341
    :goto_2
    return-void
.end method

.method private removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 142
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    .local v0, "callbacksList":Ljava/util/List;, "Ljava/util/List<Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method private static setAnimatorsEnabled()V
    .locals 4

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    return-void

    .line 443
    :cond_0
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    const-string v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 444
    .local v0, "sDurationScaleField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 447
    .local v2, "sDurationScale":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 448
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    const-string v1, "UtilsActivityLifecycle"

    const-string v3, "setAnimatorsEnabled: Animators are enabled now!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sDurationScaleField":Ljava/lang/reflect/Field;
    .end local v2    # "sDurationScale":F
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 451
    :catch_1
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 455
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    :goto_0
    nop

    .line 456
    :goto_1
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 355
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 363
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 90
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 85
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 86
    return-void
.end method

.method addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;

    .line 77
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method getActivityList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivitiesByReflect()Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "reflectActivities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 73
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method getApplicationByReflect()Landroid/app/Application;
    .locals 6

    .line 178
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    .local v1, "activityThreadClass":Ljava/lang/Class;
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "thread":Ljava/lang/Object;
    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    .local v3, "app":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 182
    return-object v0

    .line 184
    :cond_0
    move-object v4, v3

    check-cast v4, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 191
    .end local v1    # "activityThreadClass":Ljava/lang/Class;
    .end local v2    # "thread":Ljava/lang/Object;
    .end local v3    # "app":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 187
    :catch_2
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 185
    :catch_3
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 193
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 194
    :goto_1
    return-object v0
.end method

.method getTopActivity()Landroid/app/Activity;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 59
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    return-object v2

    .line 64
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method init(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;

    .line 48
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    return-void
.end method

.method isAppForeground()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 204
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/LanguageUtils;->applyLanguage(Landroid/app/Activity;)V

    .line 209
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setAnimatorsEnabled()V

    .line 210
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 211
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 212
    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->fixSoftInputLeaks(Landroid/app/Activity;)V

    .line 301
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 302
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    if-eqz p1, :cond_0

    .line 258
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 259
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 305
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 292
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'outState\' of type Bundle (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPostStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 254
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 237
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'outState\' of type Bundle (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    if-eqz p1, :cond_1

    .line 241
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 242
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 246
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 247
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 248
    return-void

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 289
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'outState\' of type Bundle (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    if-eqz p1, :cond_2

    .line 222
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 225
    :cond_0
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    if-gez v0, :cond_1

    .line 226
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    goto :goto_0

    .line 228
    :cond_1
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 230
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 231
    return-void

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 269
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    goto :goto_0

    .line 272
    :cond_0
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 273
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    if-gtz v0, :cond_1

    .line 274
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 278
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 279
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 280
    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 120
    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 131
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$3;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 116
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 117
    return-void
.end method

.method removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;

    .line 81
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method unInit(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .line 52
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 53
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    return-void
.end method
