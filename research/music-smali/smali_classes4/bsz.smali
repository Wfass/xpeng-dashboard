.class public Lbsz;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsz$a;,
        Lbsz$b;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

.field private b:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/UserAccountBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method static synthetic a(Lbsz;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lbsz;->c:J

    return-wide v0
.end method

.method static synthetic a(Lbsz;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lbsz;->c:J

    return-wide p1
.end method

.method static synthetic a(Lbsz;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;
    .locals 0

    .line 41
    iput-object p1, p0, Lbsz;->b:Lcom/lzy/okgo/adapter/Call;

    return-object p1
.end method

.method static synthetic a(Lbsz;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    return-object p1
.end method

.method static synthetic a(Lbsz;Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;)Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;
    .locals 0

    .line 41
    iput-object p1, p0, Lbsz;->e:Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;

    return-object p1
.end method

.method static synthetic a(Lbsz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lbsz;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZLbsz$a;)V
    .locals 8

    .line 82
    invoke-direct {p0}, Lbsz;->b()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lbsz;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadAccountInfo: openId is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz p3, :cond_0

    .line 88
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;

    const/4 p2, -0x1

    invoke-virtual {p0}, Lbsz;->c()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;-><init>(II)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 91
    invoke-interface {p4}, Lbsz$a;->a()V

    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_3

    .line 96
    iget-object v1, p0, Lbsz;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbsz;->f:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccountInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbsz;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    .line 103
    invoke-interface {p4}, Lbsz$a;->a()V

    :cond_4
    return-void

    .line 108
    :cond_5
    new-instance v7, Lbsz$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lbsz$1;-><init>(Lbsz;Ljava/lang/String;JZLbsz$a;)V

    invoke-static {v7}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Lbsz;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lbsz;->a(Lcom/xiaopeng/musicradio/bean/UserAccountInfo;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/UserAccountInfo;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 341
    iget-object v0, p1, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->openId:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->openId:Ljava/lang/String;

    .line 342
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->isVip()Z

    move-result p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->isVip()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->isVip()Z

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;-><init>(Z)V

    .line 349
    invoke-virtual {p0}, Lbsz;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->a(I)V

    .line 350
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lbsz;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lbsz;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lbsz;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lbsz;->f:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v1, Lbsz$2;

    invoke-direct {v1, p0, p1, v0}, Lbsz$2;-><init>(Lbsz;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    invoke-static {v1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lbsz;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbsz;->r()V

    return-void
.end method

.method static synthetic e(Lbsz;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbsz;->s()V

    return-void
.end method

.method private r()V
    .locals 1

    .line 359
    iget-object v0, p0, Lbsz;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lbsz;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lbsz;->d:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 366
    invoke-direct {p0}, Lbsz;->r()V

    .line 367
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x5

    .line 370
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 371
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbsz$5;

    invoke-direct {v1, p0}, Lbsz$5;-><init>(Lbsz;)V

    .line 372
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbsz;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object p1

    invoke-virtual {p1}, Lbef;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 388
    invoke-virtual {p0, p1}, Lbsz;->b(I)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object p1

    invoke-virtual {p1}, Lbef;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lbsz;->c()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lbsz;->o()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lbsz;->a(Ljava/lang/String;ILbsz$b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILbsz$b;)V
    .locals 4

    .line 271
    iget-object v0, p0, Lbsz;->b:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lbsz;->b:Lcom/lzy/okgo/adapter/Call;

    .line 275
    :cond_0
    invoke-virtual {p0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saiws: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    new-instance v3, Lbsz$4;

    invoke-direct {v3, p0, p1, p3, p2}, Lbsz$4;-><init>(Lbsz;Ljava/lang/String;Lbsz$b;I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lbsz;->a(JZLbsz$a;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->isSVip(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_account_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 240
    invoke-direct {p0}, Lbsz;->b()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0, p1}, Lbsz;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 414
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lbef;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "UserVipModel"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public g()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear.."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lbsz;->b:Lcom/lzy/okgo/adapter/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    .line 70
    iput-object v1, p0, Lbsz;->b:Lcom/lzy/okgo/adapter/Call;

    .line 72
    :cond_0
    iput-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lbsz;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public h()Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 162
    iget-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->isVip()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 189
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipDetailDto()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipDetailDto()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getBuyVipUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 202
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipSwitchFlag()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipEndTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public n()Z
    .locals 2

    .line 226
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 230
    iget-object v1, p0, Lbsz;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->isGreenVip()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lbsz;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 399
    invoke-virtual {p0, v0, v1}, Lbsz;->a(Ljava/lang/String;I)V

    .line 400
    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsz;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lbsz;->o()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 249
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v0

    new-instance v1, Lbsz$3;

    invoke-direct {v1, p0}, Lbsz$3;-><init>(Lbsz;)V

    invoke-virtual {v0, v1}, Lbtc;->e(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public onEvent(Lasj$s;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, -0x1

    .line 432
    invoke-virtual {p0, p1}, Lbsz;->b(I)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 408
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbsz;->d()Lbef;

    move-result-object p1

    invoke-virtual {p1}, Lbef;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 409
    :cond_0
    invoke-direct {p0}, Lbsz;->r()V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lbsz;->e:Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;->isData()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 4

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    invoke-direct {p0, v0, v1, v2, v3}, Lbsz;->a(JZLbsz$a;)V

    return-void
.end method
