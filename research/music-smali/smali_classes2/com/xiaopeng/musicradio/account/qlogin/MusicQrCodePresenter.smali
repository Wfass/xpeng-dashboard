.class public Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MusicQrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/account/qlogin/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

.field private c:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

.field private d:Z

.field private e:Z


# direct methods
.method private a(Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->e:Z

    if-eqz p1, :cond_0

    .line 167
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->e:Z

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallbackCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->c:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

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

    const-string v1, "MusicQrCodePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->d:Z

    if-eqz v0, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->c:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    if-eqz v0, :cond_2

    .line 369
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/account/qlogin/e$a;->a()V

    if-eqz p1, :cond_2

    const-string p1, "onCallbackCancel"

    .line 371
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->c:Lcom/xiaopeng/musicradio/account/qlogin/e$a;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/account/qlogin/b;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 60
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->e:Z

    if-nez p1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->e:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a(Lcom/xiaopeng/musicradio/account/qlogin/b;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a(Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

    if-eqz p1, :cond_1

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCheck, currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicQrCodePresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->a(Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

    :cond_1
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->b:Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "detachView"

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/account/qlogin/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/account/qlogin/b;->b()V

    :cond_0
    const/4 p1, 0x1

    .line 354
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;->a(Z)V

    :cond_1
    return-void
.end method
