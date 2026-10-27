.class public abstract Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionIntent.java"


# instance fields
.field protected final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->intent:Landroid/content/Intent;

    .line 17
    return-void
.end method

.method private static intentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static synthetic lambda$onStart$0(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->onStartIntent(Landroid/content/Intent;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final onStart()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionIntent$-0luXfzGdKBEYaczpKiWbeVaUW0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionIntent$-0luXfzGdKBEYaczpKiWbeVaUW0;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$vA9eDX8xm1eU_LvRDeay5zfHb10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$vA9eDX8xm1eU_LvRDeay5zfHb10;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method protected abstract onStartIntent(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected final onStop()V
    .locals 0

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->intent:Landroid/content/Intent;

    .line 40
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionIntent;->intentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    return-object v0
.end method
