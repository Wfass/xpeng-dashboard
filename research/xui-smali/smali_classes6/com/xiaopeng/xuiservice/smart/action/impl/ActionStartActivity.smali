.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionStartActivity;
.super Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;
.source "ActionStartActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;-><init>(Landroid/content/Intent;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onStartIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 18
    .local v0, "context":Landroid/content/Context;
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
