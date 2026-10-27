.class public Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartNewEggService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DUMP_CMD_DISABLE_LOCAL_EGG:Ljava/lang/String; = "-disable-local-egg"

.field private static final DUMP_CMD_ENABLE_LOCAL_EGG:Ljava/lang/String; = "-enable-local-egg"

.field private static final DUMP_CMD_STATUS:Ljava/lang/String; = "-status"

.field private static final DUMP_CMD_SYNC:Ljava/lang/String; = "-sync"

.field private static volatile LOAD_FROM_DISK:Z = false

.field private static final LOCAL_EGG_PATH:Ljava/lang/String; = "/data/operation/resource/egg/local/"

.field private static final RESULT_CONDITION_ERROR:I = 0x4

.field private static final RESULT_EXPIRED:I = 0x1

.field private static final RESULT_LIMITED:I = 0x3

.field private static final RESULT_SCHEDULED:I = 0x2

.field private static final RESULT_STARTED:I


# instance fields
.field private conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

.field private final executingRules:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/xuiservice/egg/Rule;",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final installedEggs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            ">;"
        }
    .end annotation
.end field

.field private final operationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

.field private final scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;",
            ">;"
        }
    .end annotation
.end field

.field private final startedRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/egg/Rule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->operationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    .line 86
    const-string v0, "egg"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 87
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEggWithResourceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installEgg()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 46
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->isExecCountLimited(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->stopRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private executeRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 5
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p3, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "________________________BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RULE EXECUTE: egg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 462
    .local v0, "executingRuleActionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 463
    .local v1, "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    :goto_0
    if-eqz v1, :cond_1

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGG RULE EXECUTE: IGNORE, previous execute not finish, egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "________________________END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 466
    return-void

    .line 469
    :cond_1
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->isExecIntervalLimited(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGG RULE EXECUTE: IGNORE, exec interval limited, egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "________________________END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 472
    return-void

    .line 475
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/env/Env;->create()Lcom/xiaopeng/xuiservice/smart/env/Env;

    move-result-object v2

    .line 476
    .local v2, "env":Lcom/xiaopeng/xuiservice/smart/env/Env;
    invoke-interface {p3, v2}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    .line 477
    invoke-virtual {p2, p1, v2}, Lcom/xiaopeng/xuiservice/egg/Rule;->createAction(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/env/Env;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v1

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", egg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 482
    if-nez v1, :cond_3

    .line 483
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$nuphvzwyAugPatIw6hnQPtFTV98;

    invoke-direct {v4, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$nuphvzwyAugPatIw6hnQPtFTV98;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGG EXECUTE: ERROR, parse action error, we do uninstall, egg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "________________________END "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 486
    return-void

    .line 489
    :cond_3
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    invoke-interface {v1, v3}, Lcom/xiaopeng/xuiservice/smart/action/Action;->addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    .line 550
    if-nez v0, :cond_4

    .line 551
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v3

    .line 552
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_4
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$ugmuCTpo5TbTSg7WGALGuEX7kOE;

    invoke-direct {v4, v1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$ugmuCTpo5TbTSg7WGALGuEX7kOE;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 557
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->recordRun(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    .line 558
    return-void
.end method

.method private getEggs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/egg/Egg;",
            ">;"
        }
    .end annotation

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "eggs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/egg/Egg;>;"
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    if-eqz v1, :cond_1

    .line 376
    const-string v1, "Load eggs from path: /data/operation/resource/egg/local/"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 377
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/operation/resource/egg/local/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "eggDir":Ljava/io/File;
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 379
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 380
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;

    .line 381
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$A15tM0Y45EtTreK0JqVLVJGPur8;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$A15tM0Y45EtTreK0JqVLVJGPur8;

    .line 382
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 383
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 385
    .end local v1    # "eggDir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v1

    const v2, 0x107b88

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLocalResourceList(I)Ljava/util/List;

    move-result-object v1

    .line 387
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;

    .line 388
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$A15tM0Y45EtTreK0JqVLVJGPur8;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$A15tM0Y45EtTreK0JqVLVJGPur8;

    .line 389
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 390
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 393
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
    .locals 1

    .line 626
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$InstanceHolder;->access$700()Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    move-result-object v0

    return-object v0
.end method

.method private installEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)I
    .locals 9
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####### INSTALL egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expired at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getStartTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    const-wide v4, 0x7fffffffffffffffL

    if-lez v0, :cond_2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled install at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    .line 268
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getStartTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v6}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    new-instance v1, Landroid/util/Pair;

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v7

    cmp-long v2, v7, v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v4

    nop

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "once"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;-><init>(Landroid/util/Pair;Ljava/lang/String;)V

    .line 274
    .local v0, "startTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledStart#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 275
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$9gHmO9kxrwW2wTLYAaIB3jUSUJc;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$9gHmO9kxrwW2wTLYAaIB3jUSUJc;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 284
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->startWatch()V

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v1, 0x2

    return v1

    .line 292
    .end local v0    # "startTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)Z

    move-result v0

    .line 293
    .local v0, "started":Z
    if-nez v0, :cond_3

    .line 294
    const/4 v1, 0x4

    return v1

    .line 298
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    .line 300
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " egg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getExpireTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "once"

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;-><init>(Landroid/util/Pair;Ljava/lang/String;)V

    .line 304
    .local v1, "expireTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScheduledExpire#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 305
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;

    invoke-direct {v2, p0, p1, v1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 313
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->startWatch()V

    .line 315
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v1    # "expireTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const/4 v1, 0x0

    return v1
.end method

.method private installEgg()V
    .locals 9

    .line 172
    const-string v0, "######################### INSTALL EGG START #########################"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEgg()V

    .line 178
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->getEggs()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "eggs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/egg/Egg;>;"
    if-nez v0, :cond_0

    .line 180
    const-string v1, "Load egg failed!"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;)V

    .line 181
    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load eggs done, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "scheduled":I
    const/4 v2, 0x0

    .line 188
    .local v2, "started":I
    const/4 v3, 0x0

    .line 189
    .local v3, "expired":I
    const/4 v4, 0x0

    .line 190
    .local v4, "limited":I
    const/4 v5, 0x0

    .line 192
    .local v5, "conditionError":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 193
    .local v7, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    invoke-direct {p0, v7}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .end local v7    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    goto :goto_1

    .line 207
    .restart local v7    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .end local v7    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    goto :goto_1

    .line 204
    .restart local v7    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 205
    goto :goto_1

    .line 201
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 202
    goto :goto_1

    .line 198
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_1

    .line 195
    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    .line 196
    nop

    .line 210
    .end local v7    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    :goto_1
    goto :goto_0

    .line 212
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "####### Install egg completed. Total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "(Started = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Scheduled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Expired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Limited = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ConditionError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 218
    const-string v6, "######################### INSTALL EGG END #########################"

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 219
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isExecCountLimited(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z
    .locals 4
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 561
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->execCount:Lcom/xiaopeng/xuiservice/egg/ExecCount;

    .line 562
    .local v0, "execCount":Lcom/xiaopeng/xuiservice/egg/ExecCount;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 563
    return v1

    .line 567
    :cond_0
    const-string v2, "ig"

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/egg/ExecCount;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I

    move-result v2

    .local v2, "count":I
    goto :goto_0

    .line 570
    .end local v2    # "count":I
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I

    move-result v2

    .line 573
    .restart local v2    # "count":I
    :goto_0
    iget v3, v0, Lcom/xiaopeng/xuiservice/egg/ExecCount;->count:I

    if-lt v2, v3, :cond_2

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egg exec count limited, executed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", limit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", egg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 575
    const/4 v1, 0x1

    return v1

    .line 578
    :cond_2
    return v1
.end method

.method private static isExecIntervalLimited(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z
    .locals 8
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 582
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    .line 583
    .local v0, "execInterval":Lcom/xiaopeng/xuiservice/egg/ExecInterval;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 584
    return v1

    .line 588
    :cond_0
    const-string v2, "ig"

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J

    move-result-wide v2

    .local v2, "lastExec":J
    goto :goto_0

    .line 591
    .end local v2    # "lastExec":J
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J

    move-result-wide v2

    .line 593
    .restart local v2    # "lastExec":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 594
    .local v4, "msAfterLastExec":J
    iget-wide v6, v0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->intervalMs:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public static synthetic lambda$A15tM0Y45EtTreK0JqVLVJGPur8(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$TzybKptnEgPexn-PL-qqLqeUhZg(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method

.method public static synthetic lambda$dump$16(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p3, "f"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printEgg(Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method

.method public static synthetic lambda$dump$17(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p3, "f"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printEgg(Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method

.method public static synthetic lambda$executeRule$11(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 483
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method

.method static synthetic lambda$getEggs$6(Ljava/io/File;)Lcom/xiaopeng/xuiservice/egg/Egg;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->parseFromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/egg/Egg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEggs$7(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuiservice/egg/Egg;
    .locals 2
    .param p0, "resource"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->parseFromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/egg/Egg;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$installEgg$1(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 281
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)I

    return-void
.end method

.method public static synthetic lambda$installEgg$2(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 2
    .param p1, "startTimeCondition"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    .param p2, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p3, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p4, "match"    # Z

    .line 276
    if-eqz p4, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->stopWatch()V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run scheduled task: install egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    return-void
.end method

.method public static synthetic lambda$installEgg$3(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 310
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method

.method public static synthetic lambda$installEgg$4(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 2
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "expireTimeCondition"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    .param p3, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p4, "match"    # Z

    .line 306
    if-eqz p4, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run scheduled task: uninstall egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->stopWatch()V

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$HvkW-dxOkY1r-pfNti7At2tCxBE;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$HvkW-dxOkY1r-pfNti7At2tCxBE;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public static synthetic lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onConnectXUI$0(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 2
    .param p1, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p2, "match"    # Z

    .line 138
    if-eqz p2, :cond_0

    .line 139
    invoke-static {}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->cleanMemoryExecRecord()V

    .line 141
    const-string v0, "install egg after ig on"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public static synthetic lambda$pk8KhbU2IjcSL4VuqvtKs-G2G7I(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installEgg()V

    return-void
.end method

.method static synthetic lambda$recordRun$12(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 0
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 602
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->increaseExecCountInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    return-void
.end method

.method static synthetic lambda$recordRun$13(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 0
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 604
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->increaseExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    return-void
.end method

.method static synthetic lambda$recordRun$14(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 2
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->recordLastExecInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;J)V

    return-void
.end method

.method static synthetic lambda$recordRun$15(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 2
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->recordLastExecInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;J)V

    return-void
.end method

.method static synthetic lambda$startRule$10(Lcom/xiaopeng/xuiservice/egg/Egg;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$startRule$8(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p3, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 435
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executeRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    .line 436
    return-void
.end method

.method public static synthetic lambda$startRule$9(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 2
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p3, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p4, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p5, "match"    # Z

    .line 432
    if-eqz p5, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START condition match: egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_0
    return-void
.end method

.method static synthetic lambda$uninstallEggWithResourceId$5(Ljava/lang/String;Lcom/xiaopeng/xuiservice/egg/Egg;)Z
    .locals 1
    .param p0, "resourceId"    # Ljava/lang/String;
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 324
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private printEgg(Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 781
    const-string v0, "Egg info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 784
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 786
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/egg/Egg;->rules:[Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 787
    .local v0, "rules":[Lcom/xiaopeng/xuiservice/egg/Rule;
    if-nez v0, :cond_0

    .line 788
    return-void

    .line 791
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rules count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 794
    .local v3, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    const-string v4, "Exec record:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    const-string v4, "Last exec: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    invoke-static {p2, v3}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J

    move-result-wide v4

    .line 798
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InMemory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    invoke-static {p2, v3}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getLastExecInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)J

    move-result-wide v4

    .line 800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", InStorage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 802
    const-string v6, "Exec count: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InMemory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v3}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInMemory(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",  InStorage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v3}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->getExecCountInStorage(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 806
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 808
    const-string v6, "Condition:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    iget-object v6, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->conditionJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 810
    const-string v6, "StopCondition:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    iget-object v6, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->stopConditionJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 813
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 815
    const-string v6, "Action:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    iget-object v6, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 793
    .end local v3    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 820
    :cond_1
    return-void
.end method

.method private printHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 761
    const-string v0, "Usages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    const-string v0, "-enable-local-egg"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    const-string v0, ": Load eggs from path: /data/operation/resource/egg/local/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    const-string v0, "-disable-local-egg"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    const-string v0, ": Load eggs from resource server"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    const-string v0, "-sync"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    const-string v0, ": Reload egg"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    const-string v0, "-status"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    const-string v0, ": Print current egg status"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method private static recordRun(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 3
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 599
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->execCount:Lcom/xiaopeng/xuiservice/egg/ExecCount;

    .line 600
    .local v0, "execCount":Lcom/xiaopeng/xuiservice/egg/ExecCount;
    if-eqz v0, :cond_1

    .line 601
    const-string v1, "ig"

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/egg/ExecCount;->scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$4NDyoyTlSpMINduh7oDi36pcnNE;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$4NDyoyTlSpMINduh7oDi36pcnNE;-><init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 604
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;-><init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 609
    .end local v0    # "execCount":Lcom/xiaopeng/xuiservice/egg/ExecCount;
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    .line 610
    .local v0, "execInterval":Lcom/xiaopeng/xuiservice/egg/ExecInterval;
    if-eqz v0, :cond_3

    .line 611
    const-string v1, "ig"

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$jZ7tKf1uvJPg6Khd66f0Cy706Wk;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$jZ7tKf1uvJPg6Khd66f0Cy706Wk;-><init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 614
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$sO1DG32wzL6CsJSv2gcKAnpLDGQ;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$sO1DG32wzL6CsJSv2gcKAnpLDGQ;-><init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 618
    .end local v0    # "execInterval":Lcom/xiaopeng/xuiservice/egg/ExecInterval;
    :cond_3
    :goto_1
    return-void
.end method

.method private startEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)Z
    .locals 6
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 397
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/egg/Egg;->rules:[Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 398
    .local v0, "rules":[Lcom/xiaopeng/xuiservice/egg/Rule;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    const/4 v2, 0x0

    .line 404
    .local v2, "started":Z
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 405
    .local v4, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    const/4 v2, 0x1

    .line 404
    .end local v4    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    return v2

    .line 399
    .end local v2    # "started":Z
    :cond_3
    :goto_1
    return v1
.end method

.method private startRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z
    .locals 4
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 415
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->isExecCountLimited(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 416
    return v1

    .line 419
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/egg/Rule;->createCondition()V

    .line 420
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/egg/Rule;->getCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    .line 423
    .local v0, "condition":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    if-nez v0, :cond_1

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start rule error because of no condition, egg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;)V

    .line 425
    return v1

    .line 428
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start rule: egg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rule = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 431
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 440
    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->startWatch()V

    .line 442
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8LAc7Lgbzout0rfwXMRkh_z8JlM;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8LAc7Lgbzout0rfwXMRkh_z8JlM;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 443
    .local v1, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const/4 v2, 0x1

    return v2
.end method

.method private stopRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 2
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop running rule: egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/egg/Rule;->getCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    .line 451
    .local v0, "condition":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->stopWatch()V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuiservice/egg/Rule;->setCondition(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    .line 455
    :cond_0
    return-void
.end method

.method private uninstallEgg()V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNINSTALL all eggs, installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 224
    .local v1, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->uninstallEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)V

    .line 225
    .end local v1    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method private uninstallEgg(Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 8
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####### UNINSTALL egg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 332
    .local v0, "executingRuleActionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    if-eqz v0, :cond_2

    .line 334
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 335
    .local v2, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 336
    .local v3, "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    if-eqz v3, :cond_0

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstall a running egg, egg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/egg/EggLog;->WARN(Ljava/lang/String;)V

    .line 338
    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    .line 340
    .end local v2    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    .end local v3    # "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 346
    .local v1, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    if-eqz v1, :cond_5

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 349
    .local v3, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->stopRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    .line 350
    .end local v3    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    goto :goto_1

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    .line 355
    .local v2, "expireTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    if-eqz v2, :cond_4

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel scheduled task: uninstall egg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->stopWatch()V

    .line 359
    .end local v2    # "expireTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    :cond_4
    goto :goto_2

    .line 361
    :cond_5
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    .line 362
    .local v2, "startTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    if-eqz v2, :cond_6

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel scheduled task: install egg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    .line 364
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getStartTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->stopWatch()V

    .line 369
    .end local v2    # "startTimeCondition":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method private uninstallEggWithResourceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->installedEggs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$zcrACuQruHDf9Wss1Qqk65e9_RQ;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$zcrACuQruHDf9Wss1Qqk65e9_RQ;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$TzybKptnEgPexn-PL-qqLqeUhZg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$TzybKptnEgPexn-PL-qqLqeUhZg;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    .line 325
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 326
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 638
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 639
    if-eqz p2, :cond_11

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 644
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 645
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "-disable-local-egg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "-enable-local-egg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "-status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "-sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "-help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 678
    :pswitch_0
    const-string v0, "Executing eggs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 681
    .local v0, "eggs":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/xuiservice/egg/Egg;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    const-string v2, "<EMPTY>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 684
    :cond_2
    const/4 v2, 0x1

    .line 685
    .local v2, "empty":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 686
    .local v4, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 687
    .local v5, "executingRuleActionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 688
    const/4 v2, 0x0

    .line 689
    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printEgg(Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    .line 690
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 691
    .local v7, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 692
    .local v8, "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    if-eqz v8, :cond_3

    .line 694
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .end local v7    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    .end local v8    # "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    :cond_3
    goto :goto_3

    .line 698
    .end local v4    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    .end local v5    # "executingRuleActionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    :cond_4
    goto :goto_2

    .line 699
    :cond_5
    if-eqz v2, :cond_6

    .line 700
    const-string v3, "<EMPTY>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    .end local v2    # "empty":Z
    :cond_6
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 706
    const-string v2, "Started eggs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 708
    const-string v2, "<EMPTY>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 710
    :cond_7
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 711
    .local v3, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printEgg(Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    .line 712
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 713
    .local v4, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    if-eqz v4, :cond_8

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rules count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 716
    .local v6, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 717
    .end local v6    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    goto :goto_6

    .line 719
    .end local v3    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    .end local v4    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    :cond_8
    goto :goto_5

    .line 723
    :cond_9
    :goto_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 725
    const-string v2, "ScheduledStartMap"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 727
    const-string v2, "<EMPTY>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 729
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$K2Phntm03SWhWiIXBmY8_epzNDw;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$K2Phntm03SWhWiIXBmY8_epzNDw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 732
    :goto_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 734
    const-string v2, "scheduledExpireMap"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 736
    const-string v2, "<EMPTY>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 738
    :cond_b
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 741
    :goto_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 743
    const-string v2, "Summary:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executingRules:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->startedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ScheduledStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledStartMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 745
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ScheduledExpire: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->scheduledExpireMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 746
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    goto/16 :goto_c

    .line 674
    .end local v0    # "eggs":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/xuiservice/egg/Egg;>;"
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 675
    goto/16 :goto_c

    .line 652
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 653
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, 0x520f7506

    if-eq v2, v5, :cond_d

    const v5, 0x7bc37171

    if-eq v2, v5, :cond_c

    goto :goto_a

    :cond_c
    const-string v2, "-disable-local-egg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v3, v4

    goto :goto_a

    :cond_d
    const-string v2, "-enable-local-egg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v3, v0

    :cond_e
    :goto_a
    packed-switch v3, :pswitch_data_1

    goto :goto_b

    .line 662
    :pswitch_3
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    if-eqz v2, :cond_f

    .line 663
    const-string v2, "Egg service will load eggs from resource server [default]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    .line 665
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 655
    :pswitch_4
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    if-nez v0, :cond_f

    .line 656
    const-string v0, "Egg service will load eggs from local path"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    sput-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->LOAD_FROM_DISK:Z

    .line 658
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 667
    :cond_f
    :goto_b
    goto :goto_c

    .line 670
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported in release build"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    goto :goto_c

    .line 648
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printHelp(Ljava/io/PrintWriter;)V

    .line 649
    nop

    .line 753
    :goto_c
    return-void

    .line 640
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_11
    :goto_d
    const-string v0, "egg service is running."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->printHelp(Ljava/io/PrintWriter;)V

    .line 642
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5db -> :sswitch_5
        0x2aaf0ee -> :sswitch_4
        0x2b03c48 -> :sswitch_3
        0x17463a5f -> :sswitch_2
        0x520f7506 -> :sswitch_1
        0x7bc37171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 757
    const-string v0, "SmartNewEggService"

    return-object v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onConnectXUI()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->onConnectXUI()V

    .line 125
    const-string v0, "SmartNewEggService onConnectXUI"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107b88

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setAutoSync(I)V

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->operationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 130
    const-string v0, "install egg for first start"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pk8KhbU2IjcSL4VuqvtKs-G2G7I;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 134
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    const-string v1, "Egg Service Install"

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->startWatch()V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$x8xaNv1mFVMBK-aeFT4ZABFGou0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$x8xaNv1mFVMBK-aeFT4ZABFGou0;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 145
    return-void
.end method

.method public onDisconnectXUI()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->onDisconnectXUI()V

    .line 150
    const-string v0, "SmartNewEggService onDisconnectXUI"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->operationHalListener:Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->stopWatch()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->conditionIG:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 158
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 1

    .line 162
    const-string v0, "SmartNewEggService onInit"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 167
    const-string v0, "SmartNewEggService onRelease"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 168
    return-void
.end method
