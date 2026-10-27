.class Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;
.super Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;
.source "ThemeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)V
    .locals 1

    .line 323
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 411
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1300(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 419
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1400(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    :cond_0
    return-void
.end method

.method public onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 395
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1100(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    :cond_0
    return-void
.end method

.method public onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 403
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1200(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 387
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1000(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onQueryRemoteThemeFailed(I)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 379
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$900(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;I)V

    :cond_0
    return-void
.end method

.method public onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 371
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$800(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 331
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$300(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 339
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$400(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 363
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$700(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method

.method public onThemeUpdated2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$600(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :cond_0
    return-void
.end method
