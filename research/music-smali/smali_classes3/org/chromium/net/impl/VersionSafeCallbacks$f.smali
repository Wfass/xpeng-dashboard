.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$f;
.super Lorg/chromium/net/u;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/u;


# direct methods
.method public constructor <init>(Lorg/chromium/net/u;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/chromium/net/u;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->a:Lorg/chromium/net/u;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->a:Lorg/chromium/net/u;

    invoke-virtual {v0}, Lorg/chromium/net/u;->close()V

    return-void
.end method

.method public getLength()J
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->a:Lorg/chromium/net/u;

    invoke-virtual {v0}, Lorg/chromium/net/u;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/v;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->a:Lorg/chromium/net/u;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/u;->read(Lorg/chromium/net/v;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public rewind(Lorg/chromium/net/v;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->a:Lorg/chromium/net/u;

    invoke-virtual {v0, p1}, Lorg/chromium/net/u;->rewind(Lorg/chromium/net/v;)V

    return-void
.end method
