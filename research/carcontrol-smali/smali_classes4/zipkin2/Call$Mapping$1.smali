.class Lzipkin2/Call$Mapping$1;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lzipkin2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/Call$Mapping;->doEnqueue(Lzipkin2/Callback;)V
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
.field final synthetic this$0:Lzipkin2/Call$Mapping;

.field final synthetic val$callback:Lzipkin2/Callback;


# direct methods
.method constructor <init>(Lzipkin2/Call$Mapping;Lzipkin2/Callback;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lzipkin2/Call$Mapping$1;->this$0:Lzipkin2/Call$Mapping;

    iput-object p2, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    iget-object v1, p0, Lzipkin2/Call$Mapping$1;->this$0:Lzipkin2/Call$Mapping;

    iget-object v1, v1, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    invoke-interface {v1, p1}, Lzipkin2/Call$Mapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 246
    iget-object v0, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
