.class public Lcom/xiaopeng/xuiservice/xapp/store/AppStoreProxy;
.super Ljava/lang/Object;
.source "AppStoreProxy.java"


# static fields
.field private static final ACTION_SHOW_DENIED_PROMPT:Ljava/lang/String; = "com.xiaopeng.action.SHOW_DENIED_PROMPT"

.field private static final TAG:Ljava/lang/String; = "AppStoreProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAppDeniedPrompt(Ljava/lang/String;I)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "deniedType"    # I

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.action.SHOW_DENIED_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    const-string v1, "deniedType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 16
    return-void
.end method
