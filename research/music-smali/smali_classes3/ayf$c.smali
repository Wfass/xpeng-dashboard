.class Layf$c;
.super Landroid/content/BroadcastReceiver;
.source "TimerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Layf;


# direct methods
.method constructor <init>(Layf;)V
    .locals 0

    .line 98
    iput-object p1, p0, Layf$c;->a:Layf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Layf$c;->a:Layf;

    invoke-static {p1}, Layf;->a(Layf;)V

    :cond_0
    return-void
.end method
