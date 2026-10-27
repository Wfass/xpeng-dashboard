.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.source "ConditionSingleValue.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;",
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "TV;>;"
        }
    .end annotation
.end field

.field private operator:Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field private final targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    .local p2, "targetValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 20
    if-eqz p2, :cond_0

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->targetValue:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    .line 25
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 4
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 78
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "current":Ljava/lang/Object;, "TC;"
    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getId()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/xuiservice/smart/env/Env;->setIdValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/env/Env;->addNameValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TC;"
        }
    .end annotation
.end method

.method protected abstract createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final getCurrentValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->targetValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final isMatch()Z
    .locals 3

    .line 65
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "currentValue":Ljava/lang/Object;, "TC;"
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    return v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator:Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator:Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator:Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->targetValue:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;->isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onStartWatch()V
    .locals 1

    .line 50
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->register(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V

    .line 51
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 55
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->unregister(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V

    .line 56
    return-void
.end method

.method public onValueChange(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->notifyConditionChange()V

    .line 61
    return-void
.end method

.method public abstract operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "TT;TC;>;"
        }
    .end annotation
.end method

.method public prepare()V
    .locals 1

    .line 45
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<TT;TC;TV;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->changeableValue:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->update()V

    .line 46
    return-void
.end method
