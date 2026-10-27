.class Lcom/xiaopeng/musicradio/utils/y$1;
.super Landroid/content/BroadcastReceiver;
.source "ExitDialogLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/utils/y;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/utils/y;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/y$1;->a:Lcom/xiaopeng/musicradio/utils/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/y$1;->a:Lcom/xiaopeng/musicradio/utils/y;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/y;->a(Lcom/xiaopeng/musicradio/utils/y;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/utils/y$a;

    .line 31
    invoke-interface {p2}, Lcom/xiaopeng/musicradio/utils/y$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
