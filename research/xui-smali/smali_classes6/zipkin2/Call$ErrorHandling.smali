.class final Lzipkin2/Call$ErrorHandling;
.super Lzipkin2/Call$Base;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/Call$Base<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final SENTINEL:Ljava/lang/Object;


# instance fields
.field final delegate:Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation
.end field

.field final errorHandler:Lzipkin2/Call$ErrorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call$ErrorHandler<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzipkin2/Call$ErrorHandling;->SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lzipkin2/Call$ErrorHandler;Lzipkin2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Call$ErrorHandler<",
            "TV;>;",
            "Lzipkin2/Call<",
            "TV;>;)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    .local p1, "errorHandler":Lzipkin2/Call$ErrorHandler;, "Lzipkin2/Call$ErrorHandler<TV;>;"
    .local p2, "delegate":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    invoke-direct {p0}, Lzipkin2/Call$Base;-><init>()V

    .line 315
    iput-object p1, p0, Lzipkin2/Call$ErrorHandling;->errorHandler:Lzipkin2/Call$ErrorHandler;

    .line 316
    iput-object p2, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    .line 317
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 309
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    invoke-virtual {p0}, Lzipkin2/Call$ErrorHandling;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lzipkin2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    new-instance v0, Lzipkin2/Call$ErrorHandling;

    iget-object v1, p0, Lzipkin2/Call$ErrorHandling;->errorHandler:Lzipkin2/Call$ErrorHandler;

    iget-object v2, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    invoke-virtual {v2}, Lzipkin2/Call;->clone()Lzipkin2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lzipkin2/Call$ErrorHandling;-><init>(Lzipkin2/Call$ErrorHandler;Lzipkin2/Call;)V

    return-object v0
.end method

.method protected doCancel()V
    .locals 1

    .line 351
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    iget-object v0, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    invoke-virtual {v0}, Lzipkin2/Call;->cancel()V

    .line 352
    return-void
.end method

.method protected doEnqueue(Lzipkin2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TV;>;)V"
        }
    .end annotation

    .line 339
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    .local p1, "callback":Lzipkin2/Callback;, "Lzipkin2/Callback<TV;>;"
    iget-object v0, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    new-instance v1, Lzipkin2/Call$ErrorHandling$2;

    invoke-direct {v1, p0, p1}, Lzipkin2/Call$ErrorHandling$2;-><init>(Lzipkin2/Call$ErrorHandling;Lzipkin2/Callback;)V

    invoke-virtual {v0, v1}, Lzipkin2/Call;->enqueue(Lzipkin2/Callback;)V

    .line 348
    return-void
.end method

.method protected doExecute()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    :try_start_0
    iget-object v0, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    invoke-virtual {v0}, Lzipkin2/Call;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lzipkin2/Call$ErrorHandling;->SENTINEL:Ljava/lang/Object;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 324
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;
    iget-object v2, p0, Lzipkin2/Call$ErrorHandling;->errorHandler:Lzipkin2/Call$ErrorHandler;

    new-instance v3, Lzipkin2/Call$ErrorHandling$1;

    invoke-direct {v3, p0, v1}, Lzipkin2/Call$ErrorHandling$1;-><init>(Lzipkin2/Call$ErrorHandling;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v0, v3}, Lzipkin2/Call$ErrorHandler;->onErrorReturn(Ljava/lang/Throwable;Lzipkin2/Callback;)V

    .line 332
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 333
    .local v2, "result":Ljava/lang/Object;
    sget-object v3, Lzipkin2/Call$ErrorHandling;->SENTINEL:Ljava/lang/Object;

    if-eq v3, v2, :cond_0

    .line 334
    return-object v2

    .line 333
    :cond_0
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    .local p0, "this":Lzipkin2/Call$ErrorHandling;, "Lzipkin2/Call$ErrorHandling<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorHandling{call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Call$ErrorHandling;->delegate:Lzipkin2/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Call$ErrorHandling;->errorHandler:Lzipkin2/Call$ErrorHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
