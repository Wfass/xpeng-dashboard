.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl$1;
.super Ljava/lang/Object;
.source "HookPlainSocketPImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketPImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
