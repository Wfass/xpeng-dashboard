.class public abstract Lorg/chromium/net/w$b;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 0

    return-void
.end method

.method public abstract onFailed(Lorg/chromium/net/w;Lorg/chromium/net/x;Lorg/chromium/net/e;)V
.end method

.method public abstract onReadCompleted(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onRedirectReceived(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/lang/String;)V
.end method

.method public abstract onResponseStarted(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
.end method

.method public abstract onSucceeded(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
.end method
