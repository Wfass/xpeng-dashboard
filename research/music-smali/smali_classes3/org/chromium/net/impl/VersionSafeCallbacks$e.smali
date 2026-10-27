.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$e;
.super Lorg/chromium/net/s$a;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/s$a;


# direct methods
.method public constructor <init>(Lorg/chromium/net/s$a;)V
    .locals 1

    .line 185
    invoke-virtual {p1}, Lorg/chromium/net/s$a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/s$a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 186
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a:Lorg/chromium/net/s$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a:Lorg/chromium/net/s$a;

    invoke-virtual {v0}, Lorg/chromium/net/s$a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/chromium/net/s;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a:Lorg/chromium/net/s$a;

    invoke-virtual {v0, p1}, Lorg/chromium/net/s$a;->a(Lorg/chromium/net/s;)V

    return-void
.end method
