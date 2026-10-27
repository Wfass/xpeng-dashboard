.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;
.source "XActivityDismissCauseGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XActivityDismissCauseGroupImpl"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityLifeCycles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

.field private mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

.field private mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

.field private mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

.field private mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 61
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;->dispatchTouchEvent()V

    .line 180
    :cond_0
    return-void
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;->dispatchUserEvent()V

    .line 173
    :cond_0
    return-void
.end method

.method public enableBackScene()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;->createBack(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public enableOnPauseScene()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;->createOnPause(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public enableOutSideScene()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;->createOutSide(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public enableSpeedTimeOutScene()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mCallBack:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;->createSpeedTimeOut(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getBackSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    return-object v0
.end method

.method public getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    return-object v0
.end method

.method public getOutSideSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    return-object v0
.end method

.method public getSpeedTimeOutSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    return-object v0
.end method

.method public ignoreDismissOneshot()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;->ignoreDismissOneshot()V

    .line 161
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;->onBackPressed()V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 103
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 104
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 145
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onDestroy()V

    .line 146
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 131
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onPause()V

    .line 132
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public onRecreate()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 124
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onRecreate()V

    .line 125
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 117
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onResume()V

    .line 118
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 110
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStart()V

    .line 111
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mActivityLifeCycles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;

    .line 138
    .local v1, "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;->onStop()V

    .line 139
    .end local v1    # "lifecycle":Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mBackSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mBackSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;

    if-eqz v1, :cond_0

    const-string v1, "has"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOnPauseSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOnPauseSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;

    if-eqz v1, :cond_1

    const-string v1, "has"

    goto :goto_1

    :cond_1
    const-string v1, "no"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutSideSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mOutSideSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;

    if-eqz v1, :cond_2

    const-string v1, "has"

    goto :goto_2

    :cond_2
    const-string v1, "no"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeedTimeOutSceneInspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;->mSpeedTimeOutSceneInspect:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;

    if-eqz v1, :cond_3

    const-string v1, "has"

    goto :goto_3

    :cond_3
    const-string v1, "no"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
