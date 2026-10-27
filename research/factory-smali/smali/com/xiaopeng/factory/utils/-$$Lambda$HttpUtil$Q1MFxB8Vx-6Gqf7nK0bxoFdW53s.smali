.class public final synthetic Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;

.field private final synthetic f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/HttpUtil;->lambda$uploadHwInfo$1(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method
