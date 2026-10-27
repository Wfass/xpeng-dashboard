.class public Lbtd;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtd$b;,
        Lbtd$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

.field private b:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/XmlyAccountBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method static synthetic a(Lbtd;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lbtd;->c:J

    return-wide v0
.end method

.method static synthetic a(Lbtd;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lbtd;->c:J

    return-wide p1
.end method

.method static synthetic a(Lbtd;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;
    .locals 0

    .line 33
    iput-object p1, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    return-object p1
.end method

.method private a(JZ)V
    .locals 7

    .line 78
    invoke-direct {p0}, Lbtd;->i()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz p3, :cond_0

    .line 83
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 93
    :cond_2
    new-instance v6, Lbtd$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbtd$1;-><init>(Lbtd;Ljava/lang/String;JZ)V

    invoke-static {v6}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Lbtd;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lbtd;->a(Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V

    return-void
.end method

.method static synthetic a(Lbtd;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lbtd;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 225
    iget-object v0, p1, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->openId:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->openId:Ljava/lang/String;

    .line 226
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$am;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$am;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Lbtd;
    .locals 1

    .line 50
    sget-object v0, Lbtd$a;->a:Lbtd;

    return-object v0
.end method

.method static synthetic b(Lbtd;)Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v1, Lbtd$2;

    invoke-direct {v1, p0, p1, v0}, Lbtd$2;-><init>(Lbtd;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V

    invoke-static {v1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lbtd;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lbtd;->k()V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 1

    .line 255
    iget-object v0, p0, Lbtd;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lbtd;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lbtd;->d:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 262
    invoke-direct {p0}, Lbtd;->j()V

    .line 263
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x5

    .line 266
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 267
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbtd$5;

    invoke-direct {v1, p0}, Lbtd$5;-><init>(Lbtd;)V

    .line 268
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbtd;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lbtd;->i()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0, p1}, Lbtd;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 285
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p1

    invoke-virtual {p1}, Lbdx;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 286
    invoke-virtual {p0, p1}, Lbtd;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, p2, v0}, Lbtd;->a(Ljava/lang/String;ILbtd$b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILbtd$b;)V
    .locals 8

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sycAccountInfoWithServer:openId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyVipModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lbtd;->b:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lbtd;->b:Lcom/lzy/okgo/adapter/Call;

    .line 178
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbtd;->a(JZ)V

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-direct {p0}, Lbtd;->j()V

    if-eqz p3, :cond_1

    .line 182
    new-instance p1, Lbtd$3;

    invoke-direct {p1, p0, p3}, Lbtd$3;-><init>(Lbtd;Lbtd$b;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 191
    :cond_2
    iget-object v4, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 192
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Laxy;->a(Laxy$a;Z)V

    .line 193
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v6

    new-instance v7, Lbtd$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbtd$4;-><init>(Lbtd;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/XmlyAccountInfo;Lbtd$b;)V

    invoke-virtual {v6, v7}, Lbtc;->a(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbtd;->b:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/Long;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVip:lastXmlyAccountInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",openId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",vip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",vipExpireTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XmlyVipModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 245
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->setVip(Z)V

    if-eqz p3, :cond_0

    .line 247
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->setVipExpireTime(J)V

    .line 249
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 250
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$am;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$am;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "XmlyVipModel"

    const-string v1, "clear.."

    .line 63
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lbtd;->b:Lcom/lzy/okgo/adapter/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    iput-object v1, p0, Lbtd;->b:Lcom/lzy/okgo/adapter/Call;

    .line 73
    :cond_0
    iput-object v1, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 74
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 132
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    .line 136
    iget-object v1, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->isVip()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lbtd;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->getVipEndTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 236
    invoke-direct {p0, v0, v1, v2}, Lbtd;->a(JZ)V

    return-void
.end method

.method public n_()V
    .locals 2

    .line 292
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lbtd;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 294
    invoke-virtual {p0, v0, v1}, Lbtd;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    invoke-virtual {p0}, Lbtd;->h()V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 300
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p1

    invoke-virtual {p1}, Lbdx;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 301
    :cond_0
    invoke-direct {p0}, Lbtd;->j()V

    :cond_1
    return-void
.end method
