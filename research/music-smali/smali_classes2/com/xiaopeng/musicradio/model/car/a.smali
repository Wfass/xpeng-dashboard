.class public Lcom/xiaopeng/musicradio/model/car/a;
.super Ljava/lang/Object;
.source "IGManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/car/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    .line 38
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->d:Z

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->e:Z

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const-string v0, "IGManager"

    const-string v1, "IGManager: ============"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/car/a;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/musicradio/model/car/a$a;->a:Lcom/xiaopeng/musicradio/model/car/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/car/a;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    return p0
.end method

.method private j()V
    .locals 5

    const-string v0, "IGManager"

    const/4 v1, 0x1

    .line 81
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->c()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;->getIgStatusFromMcu()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "rebootPlay getIgStatusFromMcu"

    .line 83
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 85
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarApiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " igOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne v2, v1, :cond_0

    .line 87
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    .line 88
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->a(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    const-string v0, "SP_PLAY_BOOLEAN_REBOOT"

    .line 262
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 60
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->e:Z

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/by;->b()Z

    move-result p1

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->j()Z

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPlayWhenCarConAndBootFin mBoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/model/car/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " carconnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IGManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->e:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/car/a;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "rebootPlayWhenCarConAndBootFin: ====== "

    .line 69
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    .line 71
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Laqr;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 126
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 130
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    .line 133
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 137
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "igOff: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasPlaying = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IGManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    return-void

    .line 142
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    .line 143
    new-instance v0, Lcom/xiaopeng/musicradio/model/car/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/car/a$1;-><init>(Lcom/xiaopeng/musicradio/model/car/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgReplay: ====== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IGManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/car/a;->c(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "igOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IGManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/car/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/car/a$2;-><init>(Lcom/xiaopeng/musicradio/model/car/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IGManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SP_PLAY_BOOLEAN"

    .line 247
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Z)V

    const-string v0, "SP_PLAY_BOOLEAN_REBOOT"

    .line 248
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    .line 215
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    .line 216
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    .line 217
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->e()Z

    move-result v1

    const-string v2, "IGManager"

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->e()Z

    move-result v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igOn run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->a(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->g()V

    goto :goto_1

    .line 218
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: model = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->e()Z

    move-result v1

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " silence = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    if-nez v2, :cond_2

    .line 223
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    .line 225
    invoke-interface {v0, v2}, Laqt;->seekTo(I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 227
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    invoke-interface {v0}, Laqt;->g()V

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->g()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IGManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    .line 119
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/car/a;->k()V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 2

    const-string v0, "SP_PLAY_BOOLEAN"

    const/4 v1, 0x0

    .line 252
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    const-string v0, "SP_PLAY_BOOLEAN_REBOOT"

    const/4 v1, 0x0

    .line 257
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    const-string v0, "SP_PLAY_BOOLEAN"

    .line 266
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/car/a;->k()V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    return v0
.end method

.method public onCarApiConnected(Lcom/xiaopeng/musicradio/event/common/a$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->e:Z

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/car/a;->a(Z)V

    return-void
.end method

.method public onIGStateChange(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIGStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mFirstBootIG :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->d:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IGManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 101
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/model/car/a;->a:Z

    .line 102
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->b:Z

    .line 103
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->c:Z

    .line 104
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onIGStateChange: ===== "

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0, p1}, Laqr;->a(Z)V

    .line 108
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/car/a;->d:Z

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;-><init>(ZZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/car/a;->b()V

    .line 110
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/a;->d:Z

    return-void
.end method
