.class final Lcom/alipay/arome/aromecli/AromeServiceTask$1;
.super Ljava/lang/Object;
.source "AromeServiceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeServiceTask;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/arome/aromecli/requst/AromeRequest;

.field final synthetic b:Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;

.field final synthetic c:Lcom/alipay/arome/aromecli/AromeServiceTask;


# direct methods
.method constructor <init>(Lcom/alipay/arome/aromecli/AromeServiceTask;Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/arome/aromecli/AromeServiceTask;

    .line 50
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->c:Lcom/alipay/arome/aromecli/AromeServiceTask;

    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->a:Lcom/alipay/arome/aromecli/requst/AromeRequest;

    iput-object p3, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->b:Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->c:Lcom/alipay/arome/aromecli/AromeServiceTask;

    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->a:Lcom/alipay/arome/aromecli/requst/AromeRequest;

    iget-object v2, p0, Lcom/alipay/arome/aromecli/AromeServiceTask$1;->b:Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;

    invoke-static {v0, v1, v2}, Lcom/alipay/arome/aromecli/AromeServiceTask;->access$000(Lcom/alipay/arome/aromecli/AromeServiceTask;Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "task invoke error"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
