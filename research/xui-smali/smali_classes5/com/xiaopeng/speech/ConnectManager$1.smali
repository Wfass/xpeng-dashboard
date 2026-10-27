.class Lcom/xiaopeng/speech/ConnectManager$1;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/ConnectManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/ConnectManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$1;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    const-string v0, "connect "

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$1;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$1;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "connected and binder is alive, return"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 69
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "carspeechservice.SpeechServer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/speech/ConnectManager$1;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/ConnectManager;->access$100(Lcom/xiaopeng/speech/ConnectManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/ConnectManager$1;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 74
    return-void
.end method
