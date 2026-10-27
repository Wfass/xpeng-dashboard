.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1000(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/os/Binder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1002(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Landroid/os/Binder;)Landroid/os/Binder;

    .line 639
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.xiaopeng.speech.vuiengine.start"

    .line 641
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaopeng.speechtesttools"

    .line 642
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1000(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/os/Binder;

    move-result-object v2

    const-string v3, "client"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 644
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "processName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "bundle"

    .line 649
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 650
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$8;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
