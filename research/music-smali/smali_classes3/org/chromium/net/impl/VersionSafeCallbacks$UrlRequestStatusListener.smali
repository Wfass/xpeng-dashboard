.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
.super Lorg/chromium/net/w$c;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlRequestStatusListener"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/w$c;


# direct methods
.method public constructor <init>(Lorg/chromium/net/w$c;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/chromium/net/w$c;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->a:Lorg/chromium/net/w$c;

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->a:Lorg/chromium/net/w$c;

    invoke-virtual {v0, p1}, Lorg/chromium/net/w$c;->onStatus(I)V

    return-void
.end method
