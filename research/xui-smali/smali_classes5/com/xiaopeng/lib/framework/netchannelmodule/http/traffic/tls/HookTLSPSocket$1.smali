.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket$1;
.super Ljava/lang/Object;
.source "HookTLSPSocket.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;

.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket$1;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket$1;->val$domain:Ljava/lang/String;

    return-object v0
.end method
