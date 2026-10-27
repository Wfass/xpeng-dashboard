.class public Laqe;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Laqa;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Laqe$a;

.field private c:Z

.field private d:Laqb$a;

.field private e:Z

.field private f:Z


# direct methods
.method static synthetic a(Laqe;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Laqe;->f()V

    return-void
.end method

.method static synthetic a(Laqe;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Laqe;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallbackCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqe;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqe;->d:Laqb$a;

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

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Laqe;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Laqe;->d:Laqb$a;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0}, Laqb$a;->a()V

    if-eqz p1, :cond_2

    const-string p1, "onCallbackCancel"

    .line 350
    invoke-virtual {p0, v2, p1}, Laqe;->a(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Laqe;->d:Laqb$a;

    :cond_2
    return-void
.end method

.method static synthetic a(Laqe;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Laqe;->c:Z

    return p1
.end method

.method static synthetic b(Laqe;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Laqe;->a(Z)V

    return-void
.end method

.method private b(Laqf;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginConfirm: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Laqf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqe;->d:Laqb$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqa;

    iget-object v1, p1, Laqf;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Laqa;->a(Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-object v0, p0, Laqe;->d:Laqb$a;

    if-eqz v0, :cond_2

    .line 323
    iget-object p1, p1, Laqf;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Laqb$a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Laqe;->d:Laqb$a;

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-direct {p0, p1}, Laqe;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCheck, xpCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Laqe$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Laqe$a;-><init>(Laqe;Ljava/lang/String;Laqe$1;)V

    iput-object v0, p0, Laqe;->b:Laqe$a;

    .line 146
    iget-object p1, p0, Laqe;->b:Laqe$a;

    invoke-static {p1}, Laqe$a;->a(Laqe$a;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 150
    iget-boolean p1, p0, Laqe;->f:Z

    if-eqz p1, :cond_0

    .line 151
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Laqe;->f:Z

    :cond_0
    return-void
.end method

.method static synthetic c(Laqe;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Laqe;->e:Z

    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "xpCode="

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "QrCodePresenter"

    const-string v2, "getXpCode"

    .line 178
    invoke-static {v1, v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    const-string p1, "QrCodePresenter"

    const-string v0, "notifyQrCodeTimeout"

    .line 202
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 204
    invoke-direct {p0, v0}, Laqe;->a(Z)V

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqa;

    invoke-interface {p1, v0}, Laqa;->c(I)V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "QrCodePresenter"

    const-string v1, "notifyNetworkUnavailable"

    .line 184
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Laqe;->a(Z)V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqa;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Laqa;->a(I)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "QrCodePresenter"

    const-string v1, "notifyNetworkUnstable: "

    .line 193
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 195
    invoke-direct {p0, v0}, Laqe;->a(Z)V

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqa;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Laqa;->b(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a()V

    .line 66
    iget-object v0, p0, Laqe;->b:Laqe$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laqe$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "detachView"

    .line 67
    invoke-direct {p0, v0}, Laqe;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Laqa;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 54
    iget-boolean p1, p0, Laqe;->f:Z

    if-nez p1, :cond_0

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Laqe;->f:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    .line 115
    new-instance p1, Laqe$3;

    invoke-direct {p1, p0}, Laqe$3;-><init>(Laqe;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Laqe;->n()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Laqa;

    invoke-virtual {p0, p1}, Laqe;->a(Laqa;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 104
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqa;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Laqa;->a(I[Ljava/lang/String;)V

    const-string v0, "onGetQRCodeSuccess"

    .line 108
    invoke-virtual {p0, v3, v0}, Laqe;->a(ZLjava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Laqe;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0, p2}, Laqe;->c(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object p1, p0, Laqe;->b:Laqe$a;

    if-eqz p1, :cond_1

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCheck, currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laqe;->b:Laqe$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Laqe;->b:Laqe$a;

    invoke-static {p1}, Laqe$a;->b(Laqe$a;)V

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Laqe;->b:Laqe$a;

    :cond_1
    return-void
.end method

.method public a(Laqf;)Z
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginTokenReceived, task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqe;->b:Laqe$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Laqe;->b:Laqe$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Laqf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laqe$a;->a(Laqe$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqe;->b:Laqe$a;

    .line 131
    invoke-virtual {v0}, Laqe$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Laqe;->b(Laqf;)V

    const/4 p1, 0x1

    const-string v0, "onLoginTokenReceived"

    .line 133
    invoke-virtual {p0, p1, v0}, Laqe;->a(ZLjava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyQrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqe;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Laqe;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "applyQrCode"

    .line 76
    invoke-virtual {p0, v0, v1}, Laqe;->a(ZLjava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x6

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqe;->a(Ljava/lang/Integer;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Laqe;->c:Z

    .line 82
    new-instance v0, Laqe$1;

    new-instance v1, Laqe$2;

    invoke-direct {v1, p0}, Laqe$2;-><init>(Laqe;)V

    invoke-virtual {v1}, Laqe$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laqe$1;-><init>(Laqe;Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lapz;->a(Lapz$a;)V

    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 331
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Laqe;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqa;

    invoke-interface {p1}, Laqa;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 334
    invoke-direct {p0, p1}, Laqe;->a(Z)V

    :cond_1
    return-void
.end method
