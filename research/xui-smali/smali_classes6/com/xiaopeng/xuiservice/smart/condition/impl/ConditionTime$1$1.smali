.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field futureForCancel:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;
    .param p2, "name"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onStartWatch$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;)V
    .locals 2

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->update0(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Long;
    .locals 2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->fetch()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 8

    .line 109
    const-string v0, "!!!!!!!!!!!!!!!!!!!!! start timer"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionTime$1$1$uyKU1tejZqWrDEPMwfvBEN7SaoM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionTime$1$1$uyKU1tejZqWrDEPMwfvBEN7SaoM;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 111
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 112
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 116
    const-string v0, "!!!!!!!!!!!!!!!!!!!!! stop timer"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 118
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1$1;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 122
    :cond_0
    return-void
.end method
