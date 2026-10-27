.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;
.super Ljava/lang/Object;
.source "HttpEventCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->requestBodyEnd(Lokhttp3/Call;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

.field final synthetic val$byteCount:J

.field final synthetic val$call:Lokhttp3/Call;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;J)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->val$call:Lokhttp3/Call;

    iput-wide p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->val$byteCount:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->val$call:Lokhttp3/Call;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Lokhttp3/Call;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;->val$byteCount:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->requestBodyEnd(J)V

    return-void
.end method
