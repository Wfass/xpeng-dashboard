.class public abstract Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/lifecycle/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/a;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "TUIInterface;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUIInterface;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a:Ljava/lang/ref/Reference;

    const-string v1, "BasePresenter"

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getView: mViewRef is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getView: uiInterface is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUIInterface;)V"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a:Ljava/lang/ref/Reference;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 85
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method
