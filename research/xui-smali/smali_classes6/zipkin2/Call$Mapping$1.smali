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
    .param p1, "this$0"    # Lzipkin2/Call$Mapping;

    .line 241
    .local p0, "this":Lzipkin2/Call$Mapping$1;, "Lzipkin2/Call$Mapping$1;"
    iput-object p1, p0, Lzipkin2/Call$Mapping$1;->this$0:Lzipkin2/Call$Mapping;

    iput-object p2, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 251
    .local p0, "this":Lzipkin2/Call$Mapping$1;, "Lzipkin2/Call$Mapping$1;"
    iget-object v0, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    .line 252
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
    .local p0, "this":Lzipkin2/Call$Mapping$1;, "Lzipkin2/Call$Mapping$1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    iget-object v1, p0, Lzipkin2/Call$Mapping$1;->this$0:Lzipkin2/Call$Mapping;

    iget-object v1, v1, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    invoke-interface {v1, p1}, Lzipkin2/Call$Mapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lzipkin2/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lzipkin2/Call$Mapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v1, v0}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
