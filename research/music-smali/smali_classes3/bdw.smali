.class public Lbdw;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Laxy$a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbdq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdw;->a:Ljava/util/List;

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 97
    new-instance v0, Lbdw$2;

    invoke-direct {v0, p0}, Lbdw$2;-><init>(Lbdw;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 108
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0}, Larg;->b()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUserData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbdw;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QqManagerModelBase"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lbdw$3;

    invoke-direct {v0, p0}, Lbdw$3;-><init>(Lbdw;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Lbdw;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbdw;->k()V

    return-void
.end method

.method static synthetic b(Lbdw;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lbdw;->a:Ljava/util/List;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 138
    iget-object v0, p0, Lbdw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdq;

    .line 139
    invoke-virtual {p0}, Lbdw;->d()Lbef;

    move-result-object v2

    invoke-virtual {v2}, Lbef;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v1}, Lbdq;->r()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    const-string v0, "QqManagerModelBase"

    const-string v1, "onPowerOff"

    .line 161
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 3

    const-string v0, "QqManagerModelBase"

    const-string v1, "onPowerOn: "

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lbdw$4;

    invoke-direct {v0, p0}, Lbdw$4;-><init>(Lbdw;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(Lbdq;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lbdw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 78
    new-instance p1, Lbdw$1;

    invoke-direct {p1, p0}, Lbdw$1;-><init>(Lbdw;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()V
    .locals 2

    const-string v0, "QqManagerModelBase"

    const-string v1, "musicBindedSuccess: "

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lbdw;->c()Lbsh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lbsh;->fetchUserInfo()V

    .line 55
    :cond_0
    new-instance v0, Lasj$n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lasj$n;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lbdw;->k()V

    return-void
.end method

.method protected c()Lbsh;
    .locals 2

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsh;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 65
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lbef;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "music_play_list"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "dsp_custom_music"

    return-object v0
.end method

.method protected g()V
    .locals 2

    const-string v0, "QqManagerModelBase"

    const-string v1, "onUnAuthed"

    .line 147
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lbdw;->a()V

    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "QqManagerModelBase"

    const-string v1, "onMusicUnbind: ====="

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lbdw;->i()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 192
    new-instance v0, Lbdw$5;

    invoke-direct {v0, p0}, Lbdw$5;-><init>(Lbdw;)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0}, Lbdw;->m()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lbdw;->l()V

    :goto_0
    return-void
.end method
