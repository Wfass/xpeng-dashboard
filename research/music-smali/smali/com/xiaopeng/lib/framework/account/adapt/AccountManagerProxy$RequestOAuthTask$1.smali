.class Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;
.super Landroid/os/CountDownTimer;
.source "AccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

.field final synthetic val$this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;JJLcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;->this$1:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    iput-object p6, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;->val$this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AccountManagerProxy"

    const-string v1, "RequestOAuthTask timeout triggered"

    .line 274
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;->this$1:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    const/16 v1, 0x2714

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->access$800(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
