.class Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;
.super Ljava/lang/Object;
.source "XHidManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HidStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;

    .line 139
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 142
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "newState":I
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 144
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

    .line 145
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$HidStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    const/4 v3, 0x0

    invoke-interface {v2, p3, v1, v0, v3}, Lcom/xiaopeng/lib_xpbt/hid/XHidListener;->onHidStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 148
    :cond_0
    return-void
.end method
