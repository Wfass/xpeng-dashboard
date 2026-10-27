.class Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;
.super Ljava/lang/Object;
.source "RequestOAuthTask.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpAccountService;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTop()V
    .locals 4

    const-string v0, "RequestOAuthTask"

    const-string v1, "onAppCycleChanged.errCode=10004"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)J

    move-result-wide v1

    const/16 v3, 0x2714

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(IJ)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$300(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$200(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->unregisterCallbacks(Landroid/app/Application;)V

    return-void
.end method
