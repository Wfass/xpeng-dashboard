.class Lcom/xiaopeng/speech/vui/VuiSceneManager$6;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->registerReceiver()V
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

    .line 678
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 682
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    return-void

    .line 685
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 686
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "carspeechservice.SpeechServer.Start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v1, "com.xiaopeng.speech.env.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v1, "com.xiaopeng.vuiprovider.Death"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v1, "com.xiaopeng.speech.resourcemanager.NOTFOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;-><init>()V

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$902(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    .line 691
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    .line 692
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 693
    .local v1, "application":Landroid/app/Application;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$900(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "application":Landroid/app/Application;
    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
