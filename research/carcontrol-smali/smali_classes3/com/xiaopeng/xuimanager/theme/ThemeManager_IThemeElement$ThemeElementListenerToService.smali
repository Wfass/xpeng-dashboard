.class Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;
.super Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;
.source "ThemeManager_IThemeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeElementListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onQueryRemoteThemeElementFailed(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementSelectionChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
