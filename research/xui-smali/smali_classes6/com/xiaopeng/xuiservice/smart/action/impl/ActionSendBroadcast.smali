.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSendBroadcast;
.super Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;
.source "ActionSendBroadcast.java"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;-><init>(Landroid/content/Intent;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onStartIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
