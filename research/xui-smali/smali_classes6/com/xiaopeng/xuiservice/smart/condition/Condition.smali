.class public interface abstract Lcom/xiaopeng/xuiservice/smart/condition/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# virtual methods
.method public abstract addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V
.end method

.method public collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 0
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 53
    return-void
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isMatch()Z
.end method

.method public abstract removeConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;
.end method

.method public abstract startWatch()V
.end method

.method public abstract stopWatch()V
.end method
