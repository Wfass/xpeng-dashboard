.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;
.super Ljava/lang/Object;
.source "RecordPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tC:Landroid/media/MediaPlayer$OnCompletionListener;

.field private tD:Landroid/media/MediaRecorder$OnInfoListener;

.field private xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

.field private xl:Lcom/xiaopeng/devtools/model/c/a/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    .line 33
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/-$$Lambda$b$b8J0PjqHUK5AZBuVL4C9i_Sftfw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/-$$Lambda$b$b8J0PjqHUK5AZBuVL4C9i_Sftfw;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->tD:Landroid/media/MediaRecorder$OnInfoListener;

    .line 43
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/-$$Lambda$b$u25xa7Os2Udrg8GnbERFvPGAjws;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/-$$Lambda$b$u25xa7Os2Udrg8GnbERFvPGAjws;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->tC:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    .line 29
    new-instance p2, Lcom/xiaopeng/devtools/model/c/a/g/b;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/model/c/a/g/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->tC:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->tD:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->a(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 31
    return-void
.end method

.method private synthetic a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 44
    const-string p1, "RecordPresenter"

    const-string v0, "MediaPlayer.OnCompletionListener"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;->dl(I)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->stopPlay()V

    .line 49
    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 34
    const-string p1, "RecordPresenter"

    const-string p3, "MediaRecorder.OnInfoListener [%d]"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p3, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;->dl(I)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->stopRecord()V

    .line 41
    :cond_0
    return-void
.end method

.method public static synthetic lambda$b8J0PjqHUK5AZBuVL4C9i_Sftfw(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;Landroid/media/MediaRecorder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->a(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method public static synthetic lambda$u25xa7Os2Udrg8GnbERFvPGAjws(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public gM()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->gM()Z

    move-result v0

    return v0
.end method

.method public play()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->play()V

    .line 69
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->releaseAll()V

    .line 79
    return-void
.end method

.method public startRecord()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->startRecord()V

    .line 59
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->stopPlay()V

    .line 74
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;->xl:Lcom/xiaopeng/devtools/model/c/a/g/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/g/a;->stopRecord()V

    .line 64
    return-void
.end method
