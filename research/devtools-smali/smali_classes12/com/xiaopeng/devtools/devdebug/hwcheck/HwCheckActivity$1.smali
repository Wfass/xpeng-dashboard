.class Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HwCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rj:Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity$1;->rj:Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string p2, "com.xiaopeng.broadcast.START_UPGRADE_MODEM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const-string p2, "com.xiaopeng.broadcast.STOP_UPGRADE_MODEM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    return-void
.end method
