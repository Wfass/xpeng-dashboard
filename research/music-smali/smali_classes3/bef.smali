.class public Lbef;
.super Ljava/lang/Object;
.source "AuthModelImpl.java"

# interfaces
.implements Lben;


# instance fields
.field protected volatile a:Ljava/lang/String;

.field protected volatile b:J

.field private c:Z

.field private d:Z

.field private e:Lio/reactivex/disposables/Disposable;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lbef;->d()V

    .line 65
    invoke-virtual {p0}, Lbef;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthModel"

    const-string v1, "AuthModelImpl: =====checkInvalid true"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lbef;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lbef;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lbef;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 180
    iput-boolean p1, p0, Lbef;->c:Z

    .line 181
    invoke-virtual {p0}, Lbef;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lbef;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lbef;->d:Z

    return p1
.end method

.method private r()V
    .locals 4

    .line 121
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logoutServer:no net"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-boolean v0, p0, Lbef;->d:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logoutServer:running"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lbef;->d:Z

    .line 130
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logout type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbef;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "logout server"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {p0}, Lbef;->k()I

    move-result v0

    new-instance v1, Lbef$1;

    invoke-direct {v1, p0}, Lbef$1;-><init>(Lbef;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/a;->a(ILbkv;)V

    return-void
.end method


# virtual methods
.method public a(Lbdm$b;)V
    .locals 1

    .line 232
    invoke-virtual {p0}, Lbef;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 234
    invoke-interface {p1, v0}, Lbdm$b;->a(Z)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 238
    invoke-interface {p1}, Lbdm$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lbeo;)V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logout type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbef;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "logout: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "logout"

    .line 86
    invoke-virtual {p0, v0}, Lbef;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v0}, Lbef;->a(Z)V

    .line 88
    invoke-direct {p0}, Lbef;->r()V

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lbeo;->a()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 80
    new-instance v0, Lasj$m;

    invoke-direct {v0, p1}, Lasj$m;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 3

    .line 185
    iput-object p1, p0, Lbef;->a:Ljava/lang/String;

    .line 186
    iput-wide p2, p0, Lbef;->b:J

    .line 187
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBindInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expireTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lbef;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lbef;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;J)V

    const/4 p1, 0x0

    .line 190
    invoke-direct {p0, p1}, Lbef;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p2, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->a:Ljava/lang/String;

    iget-wide v1, p2, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lbef;->a(Ljava/lang/String;J)V

    .line 75
    invoke-virtual {p0, p3}, Lbef;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lbef;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lbef;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .line 171
    invoke-static {}, Lbdv;->a()Lbdv;

    move-result-object v0

    invoke-virtual {v0}, Lbdv;->h()V

    .line 172
    new-instance v0, Lasj$s;

    invoke-direct {v0}, Lasj$s;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lbdm$b;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lbef;->e:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbnj;->a(Lio/reactivex/disposables/Disposable;)V

    .line 246
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 247
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbef$2;

    invoke-direct {v1, p0, p1}, Lbef$2;-><init>(Lbef;Lbdm$b;)V

    .line 249
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbef;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " accountType = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbef;->k()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "resetBindInfo: "

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {p0}, Lbef;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lbef;->c()Lbdw;

    move-result-object p1

    invoke-virtual {p1}, Lbdw;->i()V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string p1, ""

    .line 162
    invoke-virtual {p0, p1, v0, v1}, Lbef;->a(Ljava/lang/String;J)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsi;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsi;

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lbef;->k()I

    move-result v0

    invoke-interface {p1, v0}, Lbsi;->clearUserData(I)V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lbef;->b()V

    return-void
.end method

.method protected c()Lbdw;
    .locals 1

    .line 176
    invoke-static {}, Lbdv;->a()Lbdv;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 293
    iput-object p1, p0, Lbef;->f:Ljava/lang/String;

    const-string v0, "key_last_music_login_type"

    .line 294
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 3

    .line 194
    iget-object v0, p0, Lbef;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lbef;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbef;->a:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lbef;->j()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbef;->b:J

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareBindInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbef;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExpireTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbef;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-virtual {p0}, Lbef;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lbef;->c:Z

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_logout_server_flag"

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 149
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lbrw;->e()V

    :cond_0
    const-string v0, "onBindInvalid"

    .line 153
    invoke-virtual {p0, v0}, Lbef;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 8

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    iget-object v2, p0, Lbef;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 222
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbef;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lbef;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method public h()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkLogoutServer:dialog shown"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lbef;->c:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lbef;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutServer:mOpenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbef;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lbef;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0}, Lbef;->r()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lbef;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_qq_open_id"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_qq_expire_time"

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 2

    .line 259
    invoke-virtual {p0}, Lbef;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Lbef;->m()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected m()I
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "error tip===="

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "AuthModel"

    const-string v2, "getUnbindTipStringRes: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->kugou_unbind_tips:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lbef;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lbef;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lbef;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "key_last_music_login_type"

    const-string v1, ""

    .line 282
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbef;->f:Ljava/lang/String;

    .line 284
    :cond_0
    iget-object v0, p0, Lbef;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 299
    invoke-virtual {p0}, Lbef;->h()V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthModel"

    return-object v0
.end method
