.class Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;
.super Landroid/os/Handler;
.source "ThemeManager_IThemeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;
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
            "Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;Landroid/os/Looper;)V
    .locals 0

    .line 324
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 377
    :pswitch_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V

    goto/16 :goto_0

    .line 373
    :pswitch_1
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    goto/16 :goto_0

    .line 369
    :pswitch_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    goto/16 :goto_0

    .line 364
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 365
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V

    goto :goto_0

    .line 360
    :pswitch_4
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    goto :goto_0

    .line 356
    :pswitch_5
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onQueryRemoteThemeElementFailed(II)V

    goto :goto_0

    .line 352
    :pswitch_6
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V

    goto :goto_0

    .line 348
    :pswitch_7
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementSelectionChanged(I)V

    goto :goto_0

    .line 344
    :pswitch_8
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    goto :goto_0

    .line 340
    :pswitch_9
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    goto :goto_0

    .line 336
    :pswitch_a
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
