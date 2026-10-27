.class Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;
.super Ljava/lang/Object;
.source "SmartNewEggService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->executeRule(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field stopConditionListener:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field final synthetic val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

.field final synthetic val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 489
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onActionDone$1(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 2
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 535
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$400(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop rule after run limit, egg="

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

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 539
    .local v0, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    .end local v0    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/egg/Rule;>;"
    :cond_0
    return-void
.end method

.method static synthetic lambda$onActionStarted$0(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Lcom/xiaopeng/xuiservice/smart/action/Action;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 2
    .param p0, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p1, "rule"    # Lcom/xiaopeng/xuiservice/egg/Rule;
    .param p2, "stopCondition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p3, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;
    .param p4, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p5, "match"    # Z

    .line 506
    if-eqz p5, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOP condition match: egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;

    invoke-direct {v1, p3}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 510
    :cond_0
    return-void
.end method


# virtual methods
.method public onActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 6
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 519
    .local v0, "executingRuleActionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/egg/Rule;->getStopCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v1

    .line 524
    .local v1, "stopCondition":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    if-eqz v1, :cond_2

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop watch stop condition for egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->stopConditionListener:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    if-eqz v2, :cond_1

    .line 527
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->stopConditionListener:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->removeConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 529
    :cond_1
    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->stopWatch()V

    .line 530
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/egg/Rule;->setStopCondition(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    .line 534
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    new-instance v5, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$2$l9IhJs19tGohk694nQbpMyi-1fI;

    invoke-direct {v5, p0, v3, v4}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$2$l9IhJs19tGohk694nQbpMyi-1fI;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGG RULE EXECUTE: DONE egg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "________________________END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public onActionStarted(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/egg/Rule;->createStopCondition()V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/egg/Rule;->getStopCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    .line 498
    .local v0, "stopCondition":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    if-nez v0, :cond_0

    .line 499
    return-void

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start watch stop condition for egg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop, Egg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/egg/Egg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 505
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$egg:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->val$rule:Lcom/xiaopeng/xuiservice/egg/Rule;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$2$LhTQHekeAwKUj8lK_qlVbXLk59E;

    invoke-direct {v3, v1, v2, v0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$2$LhTQHekeAwKUj8lK_qlVbXLk59E;-><init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->stopConditionListener:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    .line 512
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$2;->stopConditionListener:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 513
    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->startWatch()V

    .line 514
    return-void
.end method
