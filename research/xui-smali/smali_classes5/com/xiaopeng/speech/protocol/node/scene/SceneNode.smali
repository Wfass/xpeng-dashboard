.class public Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/scene/SceneListener;",
        ">;"
    }
.end annotation


# instance fields
.field supportAppNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 20
    const-string v0, "com.android.systemui"

    const-string v1, "com.xiaopeng.chargecontrol"

    const-string v2, "com.xiaopeng.speech.scenedemo"

    const-string v3, "com.xiaopeng.carspeechservice"

    const-string v4, "com.xiaopeng.caraccount"

    const-string v5, "com.xiaopeng.systemui"

    const-string v6, "com.xiaopeng.deviceshare"

    const-string v7, "com.xiaopeng.xuiservice"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->supportAppNameList:Ljava/util/List;

    return-void
.end method

.method private callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/scene/SceneListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneListener;->onSceneEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :goto_1
    return-void
.end method


# virtual methods
.method public onDMEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "scene.dm.end"
    .end annotation

    .line 57
    const-string v0, "jarvis.dm.end"

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onDMStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "scene.dm.start"
    .end annotation

    .line 52
    const-string v0, "jarvis.dm.start"

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onRebuild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "scene.rebuild"
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onSceneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://scene.control"
    .end annotation

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "sceneId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "sceneId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 37
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    move-object v1, v2

    goto :goto_0

    .line 38
    :cond_2
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    move-object v1, v2

    .line 41
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->supportAppNameList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "sceneId":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 48
    :goto_1
    return-void
.end method

.method public onVuiDisable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "scene.vui.disable"
    .end annotation

    .line 67
    const-string v0, "disable.vui.feature"

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onVuiEnable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "scene.vui.enable"
    .end annotation

    .line 62
    const-string v0, "enable.vui.feature"

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->callSceneEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
