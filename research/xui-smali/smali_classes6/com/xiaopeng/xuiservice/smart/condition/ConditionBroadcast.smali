.class public Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.source "ConditionBroadcast.java"


# instance fields
.field private final action:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private final context:Landroid/content/Context;

.field private onReceived:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 24
    const-string v0, "broadcast"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->action:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->onReceived:Z

    return p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->bundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isMatch()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->onReceived:Z

    return v0
.end method

.method protected onStartWatch()V
    .locals 3

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->receiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->receiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method
