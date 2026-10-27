.class Lzipkin2/Call$ErrorHandling$2;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lzipkin2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/Call$ErrorHandling;->doEnqueue(Lzipkin2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/Callback<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzipkin2/Call$ErrorHandling;

.field final synthetic val$callback:Lzipkin2/Callback;


# direct methods
.method constructor <init>(Lzipkin2/Call$ErrorHandling;Lzipkin2/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lzipkin2/Call$ErrorHandling;

    .line 339
    .local p0, "this":Lzipkin2/Call$ErrorHandling$2;, "Lzipkin2/Call$ErrorHandling$2;"
    iput-object p1, p0, Lzipkin2/Call$ErrorHandling$2;->this$0:Lzipkin2/Call$ErrorHandling;

    iput-object p2, p0, Lzipkin2/Call$ErrorHandling$2;->val$callback:Lzipkin2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 345
    .local p0, "this":Lzipkin2/Call$ErrorHandling$2;, "Lzipkin2/Call$ErrorHandling$2;"
    iget-object v0, p0, Lzipkin2/Call$ErrorHandling$2;->this$0:Lzipkin2/Call$ErrorHandling;

    iget-object v0, v0, Lzipkin2/Call$ErrorHandling;->errorHandler:Lzipkin2/Call$ErrorHandler;

    iget-object v1, p0, Lzipkin2/Call$ErrorHandling$2;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1, v1}, Lzipkin2/Call$ErrorHandler;->onErrorReturn(Ljava/lang/Throwable;Lzipkin2/Callback;)V

    .line 346
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Lzipkin2/Call$ErrorHandling$2;, "Lzipkin2/Call$ErrorHandling$2;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lzipkin2/Call$ErrorHandling$2;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 342
    return-void
.end method
