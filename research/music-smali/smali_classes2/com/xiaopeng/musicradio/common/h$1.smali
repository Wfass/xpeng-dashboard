.class Lcom/xiaopeng/musicradio/common/h$1;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/common/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/common/h;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/common/h$1;->a:Lcom/xiaopeng/musicradio/common/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lcom/xiaopeng/musicradio/common/h$1$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/common/h$1$1;-><init>(Lcom/xiaopeng/musicradio/common/h$1;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lbql;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
