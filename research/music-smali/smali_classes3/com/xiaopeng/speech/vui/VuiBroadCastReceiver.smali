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
    .locals 3

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiBroadCastReceiver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carspeechservice.SpeechServer.Start"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 21
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendBroadCast()V

    .line 22
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V

    .line 23
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateListIndexState()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "testtool.SpeechServer.Start"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendBroadCast()V

    .line 26
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateListIndexState()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.xiaopeng.speech.env.changed"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 30
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleAllSceneCache(Z)V

    .line 31
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V

    goto :goto_1

    :cond_2
    const-string v0, "com.xiaopeng.vuiprovider.Death"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "bundle"

    .line 33
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "client"

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 38
    :try_start_0
    new-instance p2, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;

    invoke-direct {p2, p1}, Lcom/xiaopeng/speech/vui/VuiAppDeathRecipient;-><init>(Landroid/os/IBinder;)V

    invoke-interface {p1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "com.xiaopeng.speech.resourcemanager.NOTFOUND"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "scene_id"

    .line 45
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
