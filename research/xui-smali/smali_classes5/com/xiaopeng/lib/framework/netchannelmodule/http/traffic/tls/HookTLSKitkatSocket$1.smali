.class final Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$1;
.super Ljava/lang/Object;
.source "HookTLSKitkatSocket.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->createSocket(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$1;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$1;->val$domain:Ljava/lang/String;

    return-object v0
.end method
