.class Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;
.super Ljava/lang/Object;
.source "SignalShowActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;Z)Z

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    check-cast p2, Lcom/xiaopeng/devtools/system/service/CollectionService$a;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/system/service/CollectionService$a;->kP()Lcom/xiaopeng/devtools/system/service/CollectionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;Lcom/xiaopeng/devtools/system/service/CollectionService;)Lcom/xiaopeng/devtools/system/service/CollectionService;

    .line 34
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;Z)Z

    .line 39
    return-void
.end method
