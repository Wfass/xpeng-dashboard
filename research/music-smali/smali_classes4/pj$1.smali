.class Lpj$1;
.super Ljava/lang/Object;
.source "InterceptorServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj;->doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/arouter/facade/Postcard;

.field final synthetic b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

.field final synthetic c:Lpj;


# direct methods
.method constructor <init>(Lpj;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lpj$1;->c:Lpj;

    iput-object p2, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    iput-object p3, p0, Lpj$1;->b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    new-instance v0, Lpr;

    sget-object v1, Lpl;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lpr;-><init>(I)V

    const/4 v1, 0x0

    .line 48
    :try_start_0
    iget-object v2, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-static {v1, v0, v2}, Lpj;->a(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 49
    iget-object v1, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lpr;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 50
    invoke-virtual {v0}, Lpr;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lpj$1;->b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    new-instance v1, Lpm;

    const-string v2, "The interceptor processing timed out."

    invoke-direct {v1, v2}, Lpm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lpj$1;->b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    new-instance v1, Lpm;

    iget-object v2, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lpm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lpj$1;->b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    iget-object v1, p0, Lpj$1;->a:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lpj$1;->b:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
