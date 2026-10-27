.class Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarAccountCallbackBroadcast"
.end annotation


# static fields
.field public static final CANCEL_LOGIN_ACTION:Ljava/lang/String; = "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_CANCEL_RESP"


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_CANCEL_RESP"

    .line 476
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    move-result-object p1

    const/16 p2, 0x4e22

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->access$800(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;I)V

    const-string p1, "AccountManagerProxy"

    const-string p2, "onReceive send action : AuthInfoError.ERROR_CODE_USER_CLOSE_QRCODE"

    .line 479
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/account/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
