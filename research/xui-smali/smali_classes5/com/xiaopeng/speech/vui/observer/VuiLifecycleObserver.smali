.class public Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;
.super Ljava/lang/Object;
.source "VuiLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiLifecycleObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field private mKeepCache:Z

.field private mLifeCycle:Landroidx/lifecycle/Lifecycle;

.field private mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field private mNeedBuild:Z

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p3, "sceneId"    # Ljava/lang/String;
    .param p4, "rootView"    # Landroid/view/View;
    .param p5, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p6, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p7, "needBuild"    # Z
    .param p8, "keepCache"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    .line 37
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    .line 38
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 39
    iput-boolean p8, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    .line 40
    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    return-object v0
.end method

.method public getLifeCycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public isKeepCache()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    return v0
.end method

.method public isNeedBuild()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    return v0
.end method

.method public onCreate()V
    .locals 7
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 45
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",rootView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 77
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 86
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    .line 88
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 66
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    const-string v1, "Local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    const-string v0, "VuiLifecycleObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    const-string v1, "Local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method public setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 0
    .param p1, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 136
    return-void
.end method

.method public setKeepCache(Z)V
    .locals 0
    .param p1, "keepCache"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    .line 144
    return-void
.end method

.method public setLifeCycle(Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "lifeCycle"    # Landroidx/lifecycle/Lifecycle;

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/Lifecycle;

    .line 120
    return-void
.end method

.method public setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 104
    return-void
.end method

.method public setNeedBuild(Z)V
    .locals 0
    .param p1, "needBuild"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    .line 152
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    .line 128
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    .line 96
    return-void
.end method
