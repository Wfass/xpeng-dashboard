.class public Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;
.super Ljava/lang/Object;
.source "XpVuiLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiLifecycleObserver"


# instance fields
.field private mLifeCycle:Landroidx/lifecycle/Lifecycle;

.field private mListener:Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;
    .param p3, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mListener:Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    .line 22
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 27
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mListener:Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/XpSpeechEngine;->registerVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 51
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mListener:Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/XpSpeechEngine;->unregisterVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 58
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 43
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->exitScene(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 35
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->enterScene(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
