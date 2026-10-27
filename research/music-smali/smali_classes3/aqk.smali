.class public Laqk;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Laqj;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Laqk$a;

.field private c:Z

.field private d:Laql$a;

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Laql$a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;-><init>()V

    .line 47
    iput-object p1, p0, Laqk;->d:Laql$a;

    return-void
.end method

.method static synthetic a(Laqk;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Laqk;->f()V

    return-void
.end method

.method static synthetic a(Laqk;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Laqk;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginConfirm: data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqk;->d:Laql$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Laqk;->d:Laql$a;

    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Laql$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Laqk;->d:Laql$a;

    .line 322
    :cond_1
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqj;

    invoke-interface {p1}, Laqj;->a()V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 153
    iget-boolean p1, p0, Laqk;->f:Z

    if-eqz p1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Laqk;->f:Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCheck, authCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",effectiveTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Laqk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Laqk$a;-><init>(Laqk;Ljava/lang/String;ILaqk$1;)V

    iput-object v0, p0, Laqk;->b:Laqk$a;

    .line 149
    iget-object p1, p0, Laqk;->b:Laqk$a;

    invoke-static {p1}, Laqk$a;->a(Laqk$a;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallbackCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqk;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqk;->d:Laql$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Laqk;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Laqk;->d:Laql$a;

    if-eqz v0, :cond_2

    .line 347
    invoke-interface {v0}, Laql$a;->a()V

    if-eqz p1, :cond_2

    const-string p1, "onCallbackCancel"

    .line 349
    invoke-virtual {p0, v2, p1}, Laqk;->a(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Laqk;->d:Laql$a;

    :cond_2
    return-void
.end method

.method static synthetic a(Laqk;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Laqk;->c:Z

    return p1
.end method

.method static synthetic b(Laqk;)I
    .locals 0

    .line 31
    iget p0, p0, Laqk;->g:I

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyQrCodeTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XQrCodePresenter"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 196
    invoke-direct {p0, v0}, Laqk;->a(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "notifyQrCodeTimeout"

    .line 199
    invoke-virtual {p0, p1, v1}, Laqk;->a(ZLjava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqj;

    invoke-interface {p1, v0}, Laqj;->c(I)V

    return-void
.end method

.method static synthetic b(Laqk;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Laqk;->e:Z

    return p1
.end method

.method static synthetic c(Laqk;)I
    .locals 1

    .line 31
    iget v0, p0, Laqk;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laqk;->g:I

    return v0
.end method

.method static synthetic c(Laqk;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Laqk;->a(Z)V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "notifyNetworkUnavailable"

    const-string v1, "XQrCodePresenter"

    .line 174
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, v0}, Laqk;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, v1, v0}, Laqk;->a(ZLjava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqj;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Laqj;->a(I)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "XQrCodePresenter"

    const-string v1, "notifyNetworkUnstable: "

    .line 184
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Laqk;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "notifyNetworkUnstable"

    .line 189
    invoke-virtual {p0, v0, v1}, Laqk;->a(ZLjava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqj;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Laqj;->b(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a()V

    .line 65
    iget-object v0, p0, Laqk;->b:Laqk$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laqk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "detachView"

    .line 66
    invoke-direct {p0, v0}, Laqk;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Laqj;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 53
    iget-boolean p1, p0, Laqk;->f:Z

    if-nez p1, :cond_0

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Laqk;->f:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;)V
    .locals 5

    .line 108
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqj;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Laqj;->a(I[Ljava/lang/String;)V

    const-string v0, "onGetQRCodeSuccess"

    .line 112
    invoke-virtual {p0, v4, v0}, Laqk;->a(ZLjava/lang/String;)V

    .line 114
    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;->b:Ljava/lang/String;

    iget p1, p1, Lcom/xiaopeng/musicradio/account/xmlylogin/bean/QrCodeBean$a;->c:I

    invoke-direct {p0, v0, p1}, Laqk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    .line 119
    new-instance p1, Laqk$2;

    invoke-direct {p1, p0}, Laqk$2;-><init>(Laqk;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Laqk;->n()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Laqj;

    invoke-virtual {p0, p1}, Laqk;->a(Laqj;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0, p2}, Laqk;->a(Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object p1, p0, Laqk;->b:Laqk$a;

    if-eqz p1, :cond_1

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCheck, currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laqk;->b:Laqk$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XQrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Laqk;->b:Laqk$a;

    invoke-static {p1}, Laqk$a;->b(Laqk$a;)V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Laqk;->b:Laqk$a;

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginTokenReceived, task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqk;->b:Laqk$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; authCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Laqk;->b:Laqk$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 134
    invoke-static {v0, p2}, Laqk$a;->a(Laqk$a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Laqk;->b:Laqk$a;

    .line 135
    invoke-virtual {p2}, Laqk$a;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
    invoke-direct {p0, p1}, Laqk;->a(Lcom/xiaopeng/musicradio/account/xmlylogin/bean/AuthCodeBean$a;)V

    const/4 p1, 0x1

    const-string p2, "onLoginTokenReceived"

    .line 137
    invoke-virtual {p0, p1, p2}, Laqk;->a(ZLjava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqk;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Laqk;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "applyQrCode"

    .line 75
    invoke-virtual {p0, v0, v1}, Laqk;->a(ZLjava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x6

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqk;->a(Ljava/lang/Integer;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Laqk;->c:Z

    .line 81
    new-instance v0, Laqk$1;

    invoke-direct {v0, p0}, Laqk$1;-><init>(Laqk;)V

    const-string v1, "qq"

    invoke-static {v1, v0}, Laqi;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, v0}, Laqk;->a(Z)V

    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 330
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p0}, Laqk;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqj;

    invoke-interface {p1}, Laqj;->b()V

    :cond_0
    const/4 p1, 0x1

    .line 333
    invoke-direct {p0, p1}, Laqk;->a(Z)V

    :cond_1
    return-void
.end method
