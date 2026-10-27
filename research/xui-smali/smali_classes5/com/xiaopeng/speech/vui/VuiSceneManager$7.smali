.class Lcom/xiaopeng/speech/vui/VuiSceneManager$7;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 762
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1000(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Binder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1002(Lcom/xiaopeng/speech/vui/VuiSceneManager;Landroid/os/Binder;)Landroid/os/Binder;

    .line 771
    :cond_0
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadCast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v0, "binderIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "com.xiaopeng.speech.vuiengine.start"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v2, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v2, "client"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1000(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Binder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 777
    const-string v2, "name"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v2, "version"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    const-string v2, "processName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_1
    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 783
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":u10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$7;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 788
    :goto_0
    return-void
.end method
