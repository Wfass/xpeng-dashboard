.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$g;
.super Lorg/chromium/net/w$b;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/w$b;


# direct methods
.method public constructor <init>(Lorg/chromium/net/w$b;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/chromium/net/w$b;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/w$b;->onCanceled(Lorg/chromium/net/w;Lorg/chromium/net/x;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/w;Lorg/chromium/net/x;Lorg/chromium/net/e;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/w$b;->onFailed(Lorg/chromium/net/w;Lorg/chromium/net/x;Lorg/chromium/net/e;)V

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/w$b;->onReadCompleted(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/w$b;->onRedirectReceived(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/w$b;->onResponseStarted(Lorg/chromium/net/w;Lorg/chromium/net/x;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/w;Lorg/chromium/net/x;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->a:Lorg/chromium/net/w$b;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/w$b;->onSucceeded(Lorg/chromium/net/w;Lorg/chromium/net/x;)V

    return-void
.end method
