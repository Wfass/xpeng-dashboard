.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$5;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->onLost(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;


# direct methods
.method constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;I)V
    .locals 0

    .line 677
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$5;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iput p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 680
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$5;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;

    move-result-object v0

    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$5;->a:I

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;->a(I)V

    return-void
.end method
