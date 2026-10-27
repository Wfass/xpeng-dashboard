.class final Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "XpIcmAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mIcmService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V
    .locals 1
    .param p1, "icmServcie"    # Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 183
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;->mIcmService:Ljava/lang/ref/WeakReference;

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$EventCallbackHandler;->mIcmService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 190
    .local v0, "mIcm":Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 202
    const-string v1, "XpIcmAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event type not handled?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_0
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->handleKeyEvents(Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    .line 192
    :pswitch_1
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->handleIcmEvents(Landroid/car/hardware/CarPropertyValue;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
