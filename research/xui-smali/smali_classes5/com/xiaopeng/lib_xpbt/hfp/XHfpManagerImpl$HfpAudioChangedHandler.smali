.class Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;
.super Ljava/lang/Object;
.source "XHfpManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HfpAudioChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;

    .line 384
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 387
    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "prevState":I
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, "newState":I
    if-ne v0, v1, :cond_0

    .line 390
    return-void

    .line 392
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prevState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$HfpAudioChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpAudioStateChanged(Ljava/lang/String;III)V

    .line 397
    :cond_1
    return-void
.end method
