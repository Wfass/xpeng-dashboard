.class Lcom/xiaopeng/lib/bughunter/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib/bughunter/d;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/bughunter/d;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/d$a;->a:Lcom/xiaopeng/lib/bughunter/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/bughunter/d;Lcom/xiaopeng/lib/bughunter/d$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/d$a;-><init>(Lcom/xiaopeng/lib/bughunter/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaopeng.action.ig_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "ig_status"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 67
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->g()I

    move-result p1

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive ig state change, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/bughunter/d$a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/lib/bughunter/d$a$1;-><init>(Lcom/xiaopeng/lib/bughunter/d$a;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
