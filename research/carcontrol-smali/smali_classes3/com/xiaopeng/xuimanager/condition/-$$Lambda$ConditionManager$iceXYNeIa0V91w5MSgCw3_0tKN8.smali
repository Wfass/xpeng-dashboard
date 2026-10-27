.class public final synthetic Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$iceXYNeIa0V91w5MSgCw3_0tKN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/condition/ConditionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$iceXYNeIa0V91w5MSgCw3_0tKN8;->f$0:Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$iceXYNeIa0V91w5MSgCw3_0tKN8;->f$0:Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    check-cast p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->lambda$onXUIDisconnected$1$ConditionManager(Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V

    return-void
.end method
