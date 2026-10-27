.class Lcom/xiaopeng/musicradio/common/h$1$1;
.super Ljava/lang/Object;
.source "NetChangeObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/common/h$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/common/h$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/common/h$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/common/h$1$1;->a:Lcom/xiaopeng/musicradio/common/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: CONNECTIVITY_ACTION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetChangeObserver"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/h$1$1;->a:Lcom/xiaopeng/musicradio/common/h$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/common/h$1;->a:Lcom/xiaopeng/musicradio/common/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/h;->a(Lcom/xiaopeng/musicradio/common/h;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 65
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/h$1$1;->a:Lcom/xiaopeng/musicradio/common/h$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/common/h$1;->a:Lcom/xiaopeng/musicradio/common/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/h;->b(Lcom/xiaopeng/musicradio/common/h;)I

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ac;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ac;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/h$1$1;->a:Lcom/xiaopeng/musicradio/common/h$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/common/h$1;->a:Lcom/xiaopeng/musicradio/common/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/common/h;->a(Lcom/xiaopeng/musicradio/common/h;I)I

    :goto_0
    return-void
.end method
