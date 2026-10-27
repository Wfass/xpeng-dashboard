.class public Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;
.super Ljava/lang/Object;
.source "VuiLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/m;


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiLifecycleObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mElementChangedListener:Lbxs;

.field private mKeepCache:Z

.field private mLifeCycle:Landroidx/lifecycle/j;

.field private mListener:Lbxv;

.field private mNeedBuild:Z

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;ZZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/j;

    .line 37
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    .line 38
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lbxs;

    .line 39
    iput-boolean p8, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    .line 40
    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getElementChangedListener()Lbxs;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lbxs;

    return-object v0
.end method

.method public getLifeCycle()Landroidx/lifecycle/j;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/j;

    return-object v0
.end method

.method public getListener()Lbxv;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

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
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",rootView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiLifecycleObserver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lbxs;

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiLifecycleObserver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lbxs;

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/j;

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, p0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    .line 86
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/j;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiLifecycleObserver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

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

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiLifecycleObserver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

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

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setElementChangedListener(Lbxs;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mElementChangedListener:Lbxs;

    return-void
.end method

.method public setKeepCache(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mKeepCache:Z

    return-void
.end method

.method public setLifeCycle(Landroidx/lifecycle/j;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mLifeCycle:Landroidx/lifecycle/j;

    return-void
.end method

.method public setListener(Lbxv;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mListener:Lbxv;

    return-void
.end method

.method public setNeedBuild(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mNeedBuild:Z

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mRootView:Landroid/view/View;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->mSceneId:Ljava/lang/String;

    return-void
.end method
