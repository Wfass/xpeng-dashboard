.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;
.super Ljava/lang/Object;
.source "HookPlainSocketKitKatImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;

    .line 460
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/HookPlainSocketKitKatImpl;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
