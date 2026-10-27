.class Lorg/chromium/net/impl/CronetBidirectionalStream$5;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/e;

.field final synthetic b:Lorg/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/e;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->a:Lorg/chromium/net/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 811
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;->a:Lorg/chromium/net/e;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/e;)V

    return-void
.end method
