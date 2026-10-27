.class Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenDisplayReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;->this$0:Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;-><init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 99
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive screen display state change, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->access$700()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver$1;-><init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
