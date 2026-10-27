.class final Lpj$2;
.super Ljava/lang/Object;
.source "InterceptorServiceImpl.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj;->b(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpr;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/arouter/facade/Postcard;


# direct methods
.method constructor <init>(Lpr;ILcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lpj$2;->a:Lpr;

    iput p2, p0, Lpj$2;->b:I

    iput-object p3, p0, Lpj$2;->c:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lpj$2;->a:Lpr;

    invoke-virtual {v0}, Lpr;->countDown()V

    .line 82
    iget v0, p0, Lpj$2;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lpj$2;->a:Lpr;

    invoke-static {v0, v1, p1}, Lpj;->a(ILpr;Lcom/alibaba/android/arouter/facade/Postcard;)V

    return-void
.end method

.method public onInterrupt(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lpj$2;->c:Lcom/alibaba/android/arouter/facade/Postcard;

    if-nez p1, :cond_0

    new-instance p1, Lpm;

    const-string v1, "No message."

    invoke-direct {p1, v1}, Lpm;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->setTag(Ljava/lang/Object;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 90
    iget-object p1, p0, Lpj$2;->a:Lpr;

    invoke-virtual {p1}, Lpr;->a()V

    return-void
.end method
