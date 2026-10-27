.class public Lorg/chromium/net/impl/i;
.super Lorg/chromium/net/impl/h;
.source "NativeCronetEngineBuilderWithLibraryLoaderImpl.java"


# instance fields
.field private b:Lorg/chromium/net/impl/VersionSafeCallbacks$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method e()Lorg/chromium/net/impl/VersionSafeCallbacks$b;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/i;->b:Lorg/chromium/net/impl/VersionSafeCallbacks$b;

    return-object v0
.end method
