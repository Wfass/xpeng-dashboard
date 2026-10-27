.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$d;
.super Lorg/chromium/net/n;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/n;


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a:Lorg/chromium/net/n;

    invoke-virtual {v0}, Lorg/chromium/net/n;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a(IJI)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a:Lorg/chromium/net/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/n;->a(IJI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 268
    instance-of v0, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a:Lorg/chromium/net/n;

    check-cast p1, Lorg/chromium/net/impl/VersionSafeCallbacks$d;

    iget-object p1, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a:Lorg/chromium/net/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a:Lorg/chromium/net/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
