.class public Lcom/xiaopeng/musicradio/account/qlogin/h;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/account/qlogin/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Lcom/xiaopeng/musicradio/account/qlogin/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

.field private c:Z

.field private d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    .line 50
    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginConfirm: data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/e$a;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;)V

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/account/qlogin/b;->a()V

    :cond_2
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;)V
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetQRCodeSuccess: Qrcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " authCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/account/qlogin/b;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/account/qlogin/b;->a(I[Ljava/lang/String;)V

    const-string v0, "onGetQRCodeSuccess"

    .line 120
    invoke-virtual {p0, v4, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->b:Ljava/lang/String;

    iget p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;->c:I

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/QrCodeBean$a;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/Integer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    .line 127
    new-instance p1, Lcom/xiaopeng/musicradio/account/qlogin/h$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$2;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->n()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 161
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->f:Z

    if-eqz p1, :cond_0

    .line 162
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->f:Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCheck, authCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",effectiveTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/musicradio/account/qlogin/h$1;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallbackCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

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

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    if-eqz v0, :cond_2

    .line 363
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/account/qlogin/e$a;->a()V

    if-eqz p1, :cond_2

    const-string p1, "onCallbackCancel"

    .line 365
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->d:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    :cond_2
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginTokenReceived, task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; authCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    .line 143
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;)V

    const/4 p1, 0x1

    const-string p2, "onLoginTokenReceived"

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/account/qlogin/h;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyQrCodeTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQrCodePresenter"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "notifyQrCodeTimeout"

    .line 207
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/account/qlogin/h;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->h:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/account/qlogin/h;)I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->h:I

    return v0
.end method

.method private f()V
    .locals 2

    const-string v0, "notifyNetworkUnavailable"

    const-string v1, "QQrCodePresenter"

    .line 182
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 184
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/account/qlogin/b;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/b;->a(I)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "QQrCodePresenter"

    const-string v1, "notifyNetworkUnstable: "

    .line 192
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "notifyNetworkUnstable"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/account/qlogin/b;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/b;->b(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "detachView"

    .line 69
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/qlogin/b;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 56
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->f:Z

    if-nez p1, :cond_0

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->f:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/b;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    if-eqz p1, :cond_1

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCheck, currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QQrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->b:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    :cond_1
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;)Z
    .locals 4

    .line 212
    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->a:Ljava/lang/String;

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;

    iget-wide v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean;->data:Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;

    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 6

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "applyQrCode"

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x6

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Ljava/lang/Integer;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 83
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->c:Z

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    const-string v5, "wx"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/account/qlogin/h;->g:Ljava/lang/String;

    const-string v5, "kgwx"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    new-instance v1, Lcom/xiaopeng/musicradio/account/qlogin/h$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h;)V

    invoke-static {v2, v3, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/a;->a(Ljava/lang/String;IZLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 344
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/account/qlogin/b;->b()V

    :cond_0
    const/4 p1, 0x1

    .line 348
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Z)V

    :cond_1
    return-void
.end method
