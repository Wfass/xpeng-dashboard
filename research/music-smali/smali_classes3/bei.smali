.class public Lbei;
.super Ljava/lang/Object;
.source "ReadingAuthModelImpl.java"

# interfaces
.implements Lbeq;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Calendar;

.field private f:Lbdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p0, Lbei;->e:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lbei;->e:Ljava/util/Calendar;

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lbei;->i()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ReadingAuthModel"

    if-nez v0, :cond_0

    const-string v0, "logoutServer:no net"

    .line 105
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lbei;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "logoutServer:running"

    .line 109
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lbei;->d:Z

    .line 113
    new-instance v0, Lbei$1;

    invoke-direct {v0, p0}, Lbei$1;-><init>(Lbei;)V

    invoke-static {v0}, Laqi;->a(Lbkv;)V

    return-void
.end method

.method static synthetic a(Lbei;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lbei;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 150
    iput-boolean p1, p0, Lbei;->c:Z

    const-string v0, "sp_xmly_logout_server_flag"

    .line 151
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "sp_xmly_login_time"

    .line 163
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetBindInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReadingAuthModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lbei;->j()V

    const-string p1, ""

    .line 141
    invoke-direct {p0, p1, p1}, Lbei;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsj;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsj;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Lbsj;->clearUserData()V

    .line 146
    :cond_0
    new-instance p1, Lasj$ac;

    invoke-direct {p1}, Lasj$ac;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 155
    iput-object p1, p0, Lbei;->a:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lbei;->b:Ljava/lang/String;

    const-string v0, "sp_xmly_open_id"

    .line 157
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sp_xmly_sid"

    .line 158
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lbei;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lbei;->d:Z

    return p1
.end method

.method private h()J
    .locals 3

    const-string v0, "sp_xmly_login_time"

    const-wide/16 v1, 0x0

    .line 167
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()V
    .locals 2

    .line 171
    iget-object v0, p0, Lbei;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "sp_xmly_open_id"

    .line 172
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbei;->a:Ljava/lang/String;

    const-string v1, "sp_xmly_sid"

    .line 173
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbei;->b:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    const-string v1, "sp_xmly_logout_server_flag"

    .line 175
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aq;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lbei;->c:Z

    return-void
.end method

.method private j()V
    .locals 3

    .line 200
    iget-object v0, p0, Lbei;->f:Lbdo;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v0}, Lbdo;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetLoginCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadingAuthModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lbei;->f:Lbdo;

    return-void
.end method


# virtual methods
.method public a(Lbdo;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lbei;->j()V

    .line 189
    invoke-virtual {p0}, Lbei;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 191
    invoke-interface {p1, v0}, Lbdo;->a(Z)V

    goto :goto_0

    .line 194
    :cond_0
    iput-object p1, p0, Lbei;->f:Lbdo;

    .line 195
    invoke-static {}, Laqn;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lbdp;)V
    .locals 1

    const-string v0, "logout"

    .line 73
    invoke-direct {p0, v0}, Lbei;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, v0}, Lbei;->a(Z)V

    .line 75
    invoke-direct {p0}, Lbei;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-interface {p1, v0}, Lbdp;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lbei;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iput-object p1, p0, Lbei;->b:Ljava/lang/String;

    const-string v0, "sp_xmly_sid"

    .line 231
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 6

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadingAuthModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    const-class v0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;

    if-nez p1, :cond_1

    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lbei;->f()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lbei;->h()J

    move-result-wide v2

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServerPush:openId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",loginTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",validStartTs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getOpenId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, p2, v2

    if-ltz p1, :cond_2

    const-string p1, "onServerPush"

    .line 252
    invoke-direct {p0, p1}, Lbei;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ReadingAuthModel"

    const-string v1, "onBindSuccess"

    .line 60
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lbei;->b()V

    .line 62
    invoke-direct {p0, p1, p2}, Lbei;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p1, Lasj$ab;

    invoke-direct {p1}, Lasj$ab;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lbei;->f:Lbdo;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 66
    invoke-interface {p1, p2}, Lbdo;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lbei;->f:Lbdo;

    return-void
.end method

.method public c()V
    .locals 1

    .line 131
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lbrw;->e()V

    :cond_0
    const-string v0, "onBindInvalid"

    .line 135
    invoke-direct {p0, v0}, Lbei;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {}, Laqn;->a()Z

    move-result v0

    const-string v1, "ReadingAuthModel"

    if-eqz v0, :cond_1

    const-string v0, "checkLogoutServer:dialog shown"

    .line 90
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    iget-boolean v0, p0, Lbei;->c:Z

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutServer:mSid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbei;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lbei;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lbei;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lbei;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lbei;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbei;->b:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadingBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbei;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbei;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReadingAuthModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lbei;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lbei;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lbei;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lbei;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lbei;->d()V

    return-void
.end method
