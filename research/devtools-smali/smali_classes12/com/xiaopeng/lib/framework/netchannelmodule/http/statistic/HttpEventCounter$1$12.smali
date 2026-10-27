.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;
.super Ljava/lang/Object;
.source "HttpEventCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->val$call:Lokhttp3/Call;

    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->val$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->val$call:Lokhttp3/Call;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Lokhttp3/Call;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;->val$request:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->requestHeadersEnd(Lokhttp3/Request;)V

    .line 253
    return-void
.end method
