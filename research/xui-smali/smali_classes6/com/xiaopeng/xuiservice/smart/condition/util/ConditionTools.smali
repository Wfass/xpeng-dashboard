.class public Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;
.super Ljava/lang/Object;
.source "ConditionTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static execute(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "task"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    :goto_0
    return-void
.end method

.method public static executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "task"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 53
    return-void
.end method

.method public static executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matchTask"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unMatchTask"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 42
    return-void
.end method

.method public static executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matchTask"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unMatchTask"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;

    .local v0, "listener":Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    invoke-direct {v0, p1, p3, p2}, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 34
    invoke-interface {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 35
    invoke-interface {p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->startWatch()V

    .line 36
    return-void
.end method

.method public static executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "task"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-void
.end method

.method static synthetic lambda$executeWhenMatch$0(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 0
    .param p0, "matchTask"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "unMatchTask"    # Ljava/lang/Runnable;
    .param p3, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p4, "match"    # Z

    .line 26
    if-eqz p4, :cond_0

    .line 27
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->execute(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 29
    :cond_0
    if-eqz p2, :cond_1

    .line 30
    invoke-static {p2, p1}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->execute(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method
