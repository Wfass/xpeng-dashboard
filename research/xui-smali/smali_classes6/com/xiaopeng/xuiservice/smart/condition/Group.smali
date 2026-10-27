.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/Group;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.source "Group.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;


# instance fields
.field private final conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$-xxYZqfVypu_1M-vNJexgVd_23s;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$-xxYZqfVypu_1M-vNJexgVd_23s;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/Group;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    return-void
.end method

.method static synthetic lambda$collectEnv$1(Lcom/xiaopeng/xuiservice/smart/env/Env;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0
    .param p0, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;
    .param p1, "c"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 45
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/smart/condition/Group;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0
    .param p1, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 15
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    return-void
.end method


# virtual methods
.method public collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 2
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 39
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$D4vbl3xhQVDqVekcdTIDQjkMOiA;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$D4vbl3xhQVDqVekcdTIDQjkMOiA;-><init>(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    return-void
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    return-object v0
.end method

.method public onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 0
    .param p1, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p2, "match"    # Z

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/Group;->notifyConditionChange()V

    .line 35
    return-void
.end method

.method protected onStartWatch()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/Group;->conditions:Ljava/util/List;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 30
    return-void
.end method
