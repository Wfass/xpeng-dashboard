.class Lorg/chromium/net/impl/CronetUrlRequest$9;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequest;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/s;

.field final synthetic b:Lorg/chromium/net/impl/CronetUrlRequest;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/s;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$9;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest$9;->a:Lorg/chromium/net/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 811
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$9;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->j(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$9;->a:Lorg/chromium/net/s;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a(Lorg/chromium/net/s;)V

    return-void
.end method
