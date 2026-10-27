.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;

.field private final synthetic f$1:Ljava/util/concurrent/Executor;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/util/-$$Lambda$ConditionTools$amTz6SJU3LnpLRJWNMaSreJzp7o;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->lambda$executeWhenMatch$0(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V

    return-void
.end method
