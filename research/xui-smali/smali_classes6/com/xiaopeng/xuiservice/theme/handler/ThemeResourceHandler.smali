.class public abstract Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.super Ljava/lang/Object;
.source "ThemeResourceHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeListener;


# static fields
.field private static final worker:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final initFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->initFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic lambda$onThemeAdded$0(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 40
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public static synthetic lambda$onThemeDeleted$1(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public static synthetic lambda$onThemeSelected$3(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public static synthetic lambda$onThemeUpdated$2(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method


# virtual methods
.method protected abstract doInit()V
.end method

.method protected abstract doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method protected abstract doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method protected abstract doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method protected abstract doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method public init()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->initFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$xSyQxLw0UnReQOMDVnXggm2eESA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$xSyQxLw0UnReQOMDVnXggm2eESA;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 86
    return-void
.end method

.method public final onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "reason"    # I

    .line 90
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    .line 91
    return-void
.end method

.method public final onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "progress"    # F

    .line 75
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    .line 76
    return-void
.end method

.method public final onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 80
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 81
    return-void
.end method

.method public final onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 70
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 71
    return-void
.end method

.method public final onQueryRemoteThemeFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 66
    return-void
.end method

.method public final onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/theme/Theme;>;"
    return-void
.end method

.method public final onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$4cd6unuTY3CVFRm6O2HZENaxpFQ;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$4cd6unuTY3CVFRm6O2HZENaxpFQ;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public final onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$io0zJJNkMeLeLxFP6fcRI5HAPCY;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$io0zJJNkMeLeLxFP6fcRI5HAPCY;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public final onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public final onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;-><init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
