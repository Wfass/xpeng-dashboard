.class public Lbee;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbee$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbds;",
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

    iput-object v0, p0, Lbee;->a:Ljava/util/List;

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method public static a()Lbee;
    .locals 1

    .line 39
    sget-object v0, Lbee$a;->a:Lbee;

    return-object v0
.end method

.method static synthetic a(Lbee;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbee;->a:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    const-string v0, "XmlyManagerModel"

    const-string v1, "clearUserData: "

    .line 94
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lbee$3;

    invoke-direct {v0, p0}, Lbee$3;-><init>(Lbee;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "XmlyManagerModel"

    const-string v1, "onPowerOff"

    .line 144
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lbds;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lbee;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 77
    new-instance p1, Lbee$2;

    invoke-direct {p1, p0}, Lbee$2;-><init>(Lbee;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "XmlyManagerModel"

    const-string v1, "readingBindedSuccess: "

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "should_down_read_love"

    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Z)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsj;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lbsj;->fetchUserInfo()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lbee;->c()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 112
    iget-object v0, p0, Lbee;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbds;

    .line 113
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v2

    invoke-virtual {v2}, Lbdx;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v1}, Lbds;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 121
    iget-object v0, p0, Lbee;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbds;

    .line 122
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v2

    invoke-virtual {v2}, Lbdx;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v1}, Lbds;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "XmlyManagerModel"

    const-string v1, "onUnAuthed"

    .line 130
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lbee;->g()V

    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "XmlyManagerModel"

    const-string v1, "onPowerOn: "

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lbee$4;

    invoke-direct {v0, p0}, Lbee$4;-><init>(Lbee;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lbee;->f()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lbee;->h()V

    :goto_0
    return-void
.end method

.method public receiveLogout(Lasj$ac;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "XmlyManagerModel"

    const-string v0, "ReadingUnBinded: "

    .line 49
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lbee;->e()V

    return-void
.end method

.method public receiveReadingBinded(Lasj$ab;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "XmlyManagerModel"

    const-string v0, "ReadingBinded: "

    .line 55
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p1, Lbee$1;

    invoke-direct {p1, p0}, Lbee$1;-><init>(Lbee;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
