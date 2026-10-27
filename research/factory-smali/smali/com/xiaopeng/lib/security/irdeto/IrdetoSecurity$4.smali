.class final Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$4;
.super Landroid/content/BroadcastReceiver;
.source "IrdetoSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->registerISFSecureStoreReloadReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 544
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :try_start_0
    const-string v1, "IrdetoSecurity"

    const-string v2, "registerISFSecureStoreReloadReceiver ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfSecureStoreReload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
