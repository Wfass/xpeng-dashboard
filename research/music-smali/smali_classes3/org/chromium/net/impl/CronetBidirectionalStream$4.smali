.class Lorg/chromium/net/impl/CronetBidirectionalStream$4;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;->onCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$4;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 643
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$4;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->e(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$4;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$4;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->d(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->c(Lorg/chromium/net/b;Lorg/chromium/net/x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 645
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Exception in onCanceled method"

    invoke-static {v1, v0, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
