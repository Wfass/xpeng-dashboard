.class Lbhi$a;
.super Ljava/lang/Object;
.source "NeteaseDown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbhi;

.field private b:Z

.field private c:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Lbhi;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lbhi$a;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbhi;Lbhi$1;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lbhi$a;-><init>(Lbhi;)V

    return-void
.end method

.method static synthetic a(Lbhi$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 277
    iput-object p1, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 289
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;F)F

    .line 290
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Z)Z

    .line 291
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbhi;->b(Lbhi;Z)Z

    .line 292
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0, v1}, Lbhi;->c(Lbhi;Z)Z

    .line 294
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 295
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v2}, Lbhi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 297
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 298
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 300
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    iget-object v2, v2, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lbhi$a;->g()V

    return-void
.end method

.method static synthetic a(Lbhi$a;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lbhi$a;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lbhi$a;->b:Z

    .line 307
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1, v0}, Lbhi;->a(Lbhi;Z)Z

    .line 308
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1, v0}, Lbhi;->b(Lbhi;Z)Z

    .line 309
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbhi;->c(Lbhi;Z)Z

    .line 311
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v1, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 312
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 314
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 315
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 316
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    iget-object v2, v2, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 318
    invoke-direct {p0}, Lbhi$a;->g()V

    return-void
.end method

.method static synthetic b(Lbhi$a;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lbhi$a;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lbhi$a;->b:Z

    .line 324
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbhi;->a(Lbhi;Z)Z

    .line 325
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1, v0}, Lbhi;->b(Lbhi;Z)Z

    .line 326
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1, v2}, Lbhi;->c(Lbhi;Z)Z

    .line 328
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v1, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 329
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v1, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v2}, Lbhi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v1, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 331
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 332
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 333
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    iget-object v2, v2, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lbhi$a;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lbhi$a;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 338
    iget-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lbhi$a;->b:Z

    return-void
.end method

.method static synthetic d(Lbhi$a;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lbhi$a;->b()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 346
    iget-boolean v0, p0, Lbhi$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0}, Lbhi;->a(Lbhi;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 351
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0, v1}, Lbhi;->d(Lbhi;Z)Z

    .line 352
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0}, Lbhi;->b(Lbhi;)V

    .line 354
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 355
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 357
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 358
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 359
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    iget-object v2, v2, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->g()V

    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0}, Lbhi;->c(Lbhi;)F

    .line 366
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbhi;->a(Lbhi;Z)Z

    .line 367
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0, v2}, Lbhi;->b(Lbhi;Z)Z

    .line 368
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v0, v1}, Lbhi;->c(Lbhi;Z)Z

    .line 370
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 371
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 373
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v0, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 374
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    iget-object v1, v0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 375
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;

    iget-object v1, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lbhi$a;->a:Lbhi;

    invoke-virtual {v0}, Lbhi;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbhi$a;->a:Lbhi;

    iget-object v2, v2, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lbhi$a;->g()V

    return-void
.end method

.method static synthetic e(Lbhi$a;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lbhi$a;->e()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 381
    iget-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 387
    invoke-direct {p0}, Lbhi$a;->f()V

    .line 388
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 389
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbhi$a$1;

    invoke-direct {v1, p0}, Lbhi$a$1;-><init>(Lbhi$a;)V

    .line 390
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbhi$a;->c:Lio/reactivex/disposables/Disposable;

    return-void
.end method
