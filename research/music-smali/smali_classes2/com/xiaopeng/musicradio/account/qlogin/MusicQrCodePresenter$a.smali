.class Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;
.super Ljava/lang/Object;
.source "MusicQrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Lio/reactivex/disposables/Disposable;


# direct methods
.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->c:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckLoginTask{mAuthCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
