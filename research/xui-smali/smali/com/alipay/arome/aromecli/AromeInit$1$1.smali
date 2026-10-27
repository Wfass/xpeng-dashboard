.class final Lcom/alipay/arome/aromecli/AromeInit$1$1;
.super Ljava/lang/Object;
.source "AromeInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeInit$1;->a(Landroid/content/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ServiceConnection;

.field final synthetic b:Lcom/alipay/arome/aromecli/AromeInit$1;


# direct methods
.method constructor <init>(Lcom/alipay/arome/aromecli/AromeInit$1;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/arome/aromecli/AromeInit$1;

    .line 115
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->b:Lcom/alipay/arome/aromecli/AromeInit$1;

    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->a:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 118
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind service timeout with conn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->b:Lcom/alipay/arome/aromecli/AromeInit$1;

    iget-object v0, v0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->b:Lcom/alipay/arome/aromecli/AromeInit$1;

    iget-object v0, v0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "bind service timeout"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/arome/aromecli/AromeInit$Callback;->postInit(ZILjava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->a:Landroid/content/ServiceConnection;

    instance-of v0, v0, Lcom/alipay/arome/aromecli/AromeInit$a;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->a:Landroid/content/ServiceConnection;

    check-cast v0, Lcom/alipay/arome/aromecli/AromeInit$a;

    invoke-virtual {v0}, Lcom/alipay/arome/aromecli/AromeInit$a;->a()V

    .line 129
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->reset()V

    .line 130
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeInit$1$1;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "unbindService exception!"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
