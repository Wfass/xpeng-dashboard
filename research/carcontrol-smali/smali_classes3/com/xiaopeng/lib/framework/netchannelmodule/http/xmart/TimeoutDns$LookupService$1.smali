.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;
.super Ljava/lang/Object;
.source "TimeoutDns.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;->call()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/net/InetAddress;
    .locals 2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;->val$host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
