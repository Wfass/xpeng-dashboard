.class public abstract Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 691
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 698
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 699
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b()V

    return-void
.end method

.method protected a(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 706
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 707
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->c()V

    return-void
.end method

.method protected abstract c()V
.end method
