.class Lzipkin2/Call$FlatMapping$1;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lzipkin2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/Call$FlatMapping;->doEnqueue(Lzipkin2/Callback;)V
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
.field final synthetic this$0:Lzipkin2/Call$FlatMapping;

.field final synthetic val$callback:Lzipkin2/Callback;


# direct methods
.method constructor <init>(Lzipkin2/Call$FlatMapping;Lzipkin2/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lzipkin2/Call$FlatMapping;

    .line 280
    .local p0, "this":Lzipkin2/Call$FlatMapping$1;, "Lzipkin2/Call$FlatMapping$1;"
    iput-object p1, p0, Lzipkin2/Call$FlatMapping$1;->this$0:Lzipkin2/Call$FlatMapping;

    iput-object p2, p0, Lzipkin2/Call$FlatMapping$1;->val$callback:Lzipkin2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 290
    .local p0, "this":Lzipkin2/Call$FlatMapping$1;, "Lzipkin2/Call$FlatMapping$1;"
    iget-object v0, p0, Lzipkin2/Call$FlatMapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v0, p1}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    .line 291
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 283
    .local p0, "this":Lzipkin2/Call$FlatMapping$1;, "Lzipkin2/Call$FlatMapping$1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lzipkin2/Call$FlatMapping$1;->this$0:Lzipkin2/Call$FlatMapping;

    iget-object v1, p0, Lzipkin2/Call$FlatMapping$1;->this$0:Lzipkin2/Call$FlatMapping;

    iget-object v1, v1, Lzipkin2/Call$FlatMapping;->flatMapper:Lzipkin2/Call$FlatMapper;

    invoke-interface {v1, p1}, Lzipkin2/Call$FlatMapper;->map(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v1

    iput-object v1, v0, Lzipkin2/Call$FlatMapping;->mapped:Lzipkin2/Call;

    iget-object v0, p0, Lzipkin2/Call$FlatMapping$1;->val$callback:Lzipkin2/Callback;

    invoke-virtual {v1, v0}, Lzipkin2/Call;->enqueue(Lzipkin2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lzipkin2/Call$FlatMapping$1;->val$callback:Lzipkin2/Callback;

    invoke-interface {v1, v0}, Lzipkin2/Callback;->onError(Ljava/lang/Throwable;)V

    .line 287
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
