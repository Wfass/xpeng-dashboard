.class public Lcom/xiaopeng/speech/vui/VuiBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VuiBroadCastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VuiBroadCastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v1, "carspeechservice.SpeechServer.Start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 21
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 22
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 23
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateListIndexState()V

    goto/16 :goto_2

    .line 24
    :cond_0
    const-string v1, "testtool.SpeechServer.Start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 26
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateListIndexState()V

    goto/16 :goto_2

    .line 28
    :cond_1
    const-string v1, "com.xiaopeng.speech.env.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 30
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleAllSceneCache(Z)V

    .line 31
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V

    goto :goto_2

    .line 32
    :cond_2
    const-string v1, "com.xiaopeng.vuiprovider.Death"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    const-string v1, "bundle"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 34
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 35
    const-string v2, "client"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 36
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_3

    .line 38
    :try_start_0
    new-instance v4, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;

    invoke-direct {v4, v2}, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;-><init>(Landroid/os/IBinder;)V

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    goto :goto_2

    :cond_4
    const-string v1, "com.xiaopeng.speech.resourcemanager.NOTFOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    const-string v1, "scene_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    .local v1, "sceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "sceneID":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    .line 49
    .end local v3    # "sceneID":Ljava/lang/String;
    goto :goto_1

    .line 52
    .end local v1    # "sceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    return-void
.end method
