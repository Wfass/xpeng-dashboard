.class Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;
.super Ljava/lang/Object;
.source "XpAccountProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpAccountProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$002(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;Lcom/xiaopeng/lib/framework/account/IXpAccountService;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$000(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$000(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$100(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->init(JLjava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$000(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mUserInfoChangedListener:Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->subscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$200(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$300(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$400(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpAccountProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$500(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    return-void
.end method
