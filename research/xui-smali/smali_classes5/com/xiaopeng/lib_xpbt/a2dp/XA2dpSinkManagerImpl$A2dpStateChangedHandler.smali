.class Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;
.super Ljava/lang/Object;
.source "XA2dpSinkManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2dpStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;

    .line 199
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 202
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, "newState":I
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, "prevState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prevState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$A2dpStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    const/4 v3, 0x0

    invoke-interface {v2, p3, v1, v0, v3}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;->onA2dpStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 208
    :cond_0
    return-void
.end method
