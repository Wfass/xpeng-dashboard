.class Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;
.super Landroid/os/Handler;
.source "ThemeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventCallbackHandler"
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
.method constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 429
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 430
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 447
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 448
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/Theme;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto/16 :goto_0

    .line 478
    :pswitch_1
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/Theme;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    goto/16 :goto_0

    .line 475
    :pswitch_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto/16 :goto_0

    .line 472
    :pswitch_3
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_0

    .line 467
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 468
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/theme/Theme;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    goto :goto_0

    .line 464
    :pswitch_5
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_0

    .line 461
    :pswitch_6
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onQueryRemoteThemeFailed(I)V

    goto :goto_0

    .line 458
    :pswitch_7
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onQueryRemoteThemeSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 455
    :pswitch_8
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_0

    .line 452
    :pswitch_9
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_0

    .line 444
    :pswitch_a
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    goto :goto_0

    .line 441
    :pswitch_b
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
