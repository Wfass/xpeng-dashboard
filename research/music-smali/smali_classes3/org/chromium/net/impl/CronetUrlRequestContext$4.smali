.class Lorg/chromium/net/impl/CronetUrlRequestContext$4;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

.field final synthetic b:Lorg/chromium/net/s;

.field final synthetic c:Lorg/chromium/net/impl/CronetUrlRequestContext;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$e;Lorg/chromium/net/s;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->c:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->a:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->b:Lorg/chromium/net/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->a:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->b:Lorg/chromium/net/s;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a(Lorg/chromium/net/s;)V

    return-void
.end method
