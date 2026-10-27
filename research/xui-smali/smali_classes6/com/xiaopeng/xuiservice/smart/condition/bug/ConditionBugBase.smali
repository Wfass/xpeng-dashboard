.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.source "ConditionBugBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;


# instance fields
.field private final count:I

.field private latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

.field private final window:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "window"    # J

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 23
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->count:I

    .line 24
    iput-wide p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->window:J

    .line 26
    if-lez p2, :cond_1

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "window < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 4
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 91
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->collectEnv(Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 94
    .local v0, "bug":Lcom/xiaopeng/xuiservice/bughunter/Bug;
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->getId()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 100
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/xuiservice/smart/env/Env;->setIdValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/env/Env;->addNameValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->count:I

    return v0
.end method

.method public getWindow()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->window:J

    return-wide v0
.end method

.method public final isMatch()Z
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 73
    .local v0, "bug":Lcom/xiaopeng/xuiservice/bughunter/Bug;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 77
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 78
    return v3

    .line 81
    :cond_1
    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->window:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v2

    iget v4, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->window:J

    sub-long/2addr v6, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getBugCountAfter(ILjava/lang/String;J)I

    move-result v2

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->count:I

    if-lt v2, v4, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1

    .line 85
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v2

    iget v4, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getBugCount(ILjava/lang/String;)I

    move-result v2

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->count:I

    if-lt v2, v4, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1
.end method

.method protected abstract matchBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Z
.end method

.method public onReceiveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V
    .locals 2
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 57
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->matchBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive diff bug, last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->notifyConditionChange()V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->latestBug:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->notifyConditionChange()V

    .line 68
    :cond_1
    return-void
.end method

.method protected final onStartWatch()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->registerBugListener(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;)V

    .line 46
    return-void
.end method

.method protected final onStopWatch()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->unregisterBugListener(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;)V

    .line 51
    return-void
.end method
