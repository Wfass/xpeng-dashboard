.class public Lbed;
.super Ljava/lang/Object;
.source "UserManagerModel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lbqk;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbdr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbed;->b:Ljava/util/List;

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lbdv;->a()Lbdv;

    return-void
.end method

.method static synthetic a(Lbed;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lbed;->b:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 2

    const-string v0, "UserManagerModel"

    const-string v1, "clearUserData: "

    .line 66
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lbed$1;

    invoke-direct {v0, p0}, Lbed$1;-><init>(Lbed;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private d()V
    .locals 2

    const-string v0, "UserManagerModel"

    const-string v1, "onPowerOff"

    .line 109
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "should_down_read_love"

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 83
    iget-object v0, p0, Lbed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdr;

    .line 84
    invoke-interface {v1}, Lbdr;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v2

    invoke-virtual {v2}, Lbdm;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {v1}, Lbdr;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "UserManagerModel"

    const-string v1, "onUnAuthed"

    .line 92
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lbed;->c()V

    .line 94
    iget-object v0, p0, Lbed;->a:Lbqk;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lbqk;->a()V

    :cond_0
    return-void
.end method

.method public netValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object p1

    invoke-virtual {p1}, Lbeb;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UserManagerModel"

    const-string v0, "netValid: ========"

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lbed;->a()V

    .line 58
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    :cond_0
    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lbed;->d()V

    :goto_0
    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "UserManagerModel"

    const-string v0, "receiveLogout: "

    .line 49
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lbed;->b()V

    return-void
.end method
