.class public Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;,
        Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;,
        Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastManagerHolder;
    }
.end annotation


# static fields
.field public static final ACTION_SCREEN_STATUS_CHANGE:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_SCREEN_STATUS_CHANGE"

.field public static final ACTION_VOICE_ACTIVE:Ljava/lang/String; = "com.xiaopeng.speech.action.wakeup"

.field public static final ACTION_XKEY:Ljava/lang/String; = "com.xiaopeng.intent.action.xkey"

.field private static final PROP_LOCKED_BOOT_COMPLETE:Ljava/lang/String; = "sys.xiaopeng.lockedbootcomplete"

.field private static final TAG:Ljava/lang/String; = "BroadcastManager"

.field private static final broadcastActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lockedBootCompleteGot:Z

.field private static mBootCompleted:Z

.field private static mContext:Landroid/content/Context;

.field private static mUserManager:Landroid/os/UserManager;

.field private static unlocked:Z


# instance fields
.field private mBootTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerRecord:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mLockedBootTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserUnlockedTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootCompleted:Z

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserManager:Landroid/os/UserManager;

    .line 41
    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    .line 42
    const-string v1, "sys.xiaopeng.lockedbootcomplete"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lockedBootCompleteGot:Z

    .line 43
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->broadcastActions:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserUnlockedTaskList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->dispatchBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    return-object v0
.end method

.method private dispatchBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 329
    const-string v0, "BroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchBroadcast, intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-nez p2, :cond_0

    .line 332
    const-string v0, "BroadcastManager"

    const-string v1, "intent invalid"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x35f22cb2    # -2323667.5f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x2f94f923

    if-eq v2, v3, :cond_2

    const v3, 0x31af1c32

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 358
    :pswitch_0
    sput-boolean v4, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    .line 359
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserUnlockedTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 360
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserUnlockedTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 361
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 362
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 349
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 352
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 353
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_2

    .line 354
    :cond_5
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 338
    :pswitch_2
    sput-boolean v4, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lockedBootCompleteGot:Z

    .line 339
    const-string v1, "sys.xiaopeng.lockedbootcomplete"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 343
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 344
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_3

    .line 345
    :cond_6
    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 369
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 370
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;

    invoke-direct {v2, v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 379
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method public static isBootComplete()Z
    .locals 1

    .line 213
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    .line 217
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    return v0
.end method

.method public static isLockedBootComplete()Z
    .locals 1

    .line 221
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lockedBootCompleteGot:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$dispatchBroadcast$3(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "record"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    .line 371
    iget-object v0, p3, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;->mActionFilter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    .local v1, "dest":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v0, p3, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;->mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 374
    goto :goto_1

    .line 376
    .end local v1    # "dest":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic lambda$sendBroadcast$0(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 246
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$sendBroadcast$2(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 288
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$sendBroadcastAsScreen$1(ILandroid/content/Intent;)V
    .locals 4
    .param p0, "screenId"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .line 261
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getUserId(Landroid/content/Context;I)I

    move-result v0

    .line 262
    .local v0, "userId":I
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "userId":I
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registBootCompleteBroadcast()V
    .locals 3

    .line 299
    const-string v0, "BroadcastManager"

    const-string v1, "no main registBootCompleteBroadcast"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)V

    .line 310
    .local v1, "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method private registBroadcasts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "action":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    .end local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$5;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)V

    .line 325
    .local v1, "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    return-void
.end method


# virtual methods
.method public addBootCompleteTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mBootTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addLockedBootCompleteTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mLockedBootTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addUserUnlockedTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserUnlockedTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 173
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public init()V
    .locals 1

    .line 234
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->broadcastActions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registBroadcasts(Ljava/util/List;)V

    .line 235
    return-void
.end method

.method public initNonMain()V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registBootCompleteBroadcast()V

    .line 240
    return-void
.end method

.method public isUserUnlocked()Z
    .locals 1

    .line 225
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    .line 229
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unlocked:Z

    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 81
    .local v0, "record":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V
    .locals 6
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 93
    .local v0, "record":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    monitor-enter v2

    .line 98
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .local v4, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    if-nez v1, :cond_0

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v4    # "action":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 107
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registBroadcasts(Ljava/util/List;)V

    .line 112
    :cond_3
    return-void

    .line 107
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public registerPackageListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V
    .locals 9
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p2, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 138
    .local v0, "record":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    .local v4, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 145
    if-nez v1, :cond_0

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mDynamicActions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v4    # "action":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 152
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v1, :cond_4

    .line 155
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .restart local v4    # "action":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    .end local v4    # "action":Ljava/lang/String;
    goto :goto_1

    .line 161
    :cond_3
    new-instance v4, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$2;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$2;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)V

    .line 168
    .local v4, "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    :cond_4
    return-void

    .line 152
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 243
    const v0, 0x1400020

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$H_poE-BJJq-qp3VshwpuMpCjhoM;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$H_poE-BJJq-qp3VshwpuMpCjhoM;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public sendBroadcast(Landroid/content/Intent;Z)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "runtimeOnly"    # Z

    .line 278
    const/4 v0, 0x1

    .line 280
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    .line 281
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 283
    :cond_0
    const/high16 v1, 0x1400000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$CRUP2YBpdylTJbAjPmrkRR13FPA;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$CRUP2YBpdylTJbAjPmrkRR13FPA;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return v0
.end method

.method public sendBroadcastAsScreen(Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I

    .line 255
    const-string v0, "BroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastAsScreen screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const v0, 0x1400020

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;

    invoke-direct {v1, p2, p1}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "record":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    .line 121
    .local v2, "listenerRecord":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;->mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    if-ne v3, p1, :cond_1

    .line 122
    move-object v0, v2

    .line 123
    goto :goto_1

    .line 125
    .end local v2    # "listenerRecord":Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
    :cond_1
    goto :goto_0

    .line 126
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->mListenerRecord:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    return-void
.end method
