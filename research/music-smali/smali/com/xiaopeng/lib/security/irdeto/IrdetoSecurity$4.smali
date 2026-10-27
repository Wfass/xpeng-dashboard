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

    .line 562
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    .line 566
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "IrdetoSecurity"

    const-string p2, "registerISFSecureStoreReloadReceiver ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD"

    .line 568
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfSecureStoreReload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
