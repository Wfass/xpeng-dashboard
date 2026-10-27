.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;


# direct methods
.method constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;JI)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->c:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iput-wide p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->a:J

    iput p4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 635
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->c:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->a:J

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$2;->b:I

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;->a(JI)V

    return-void
.end method
