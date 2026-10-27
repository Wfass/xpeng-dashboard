.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;


# direct methods
.method constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;JIZ)V
    .locals 0

    .line 608
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->d:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iput-wide p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->a:J

    iput p4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->b:I

    iput-boolean p5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 611
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->d:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->a:J

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->b:I

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;->a(JI)V

    .line 612
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->c:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->d:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;

    move-result-object v0

    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->b:I

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;->a(I)V

    .line 616
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->d:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c;->b:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$c$1;->a:J

    aput-wide v3, v1, v2

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;->a([J)V

    :cond_0
    return-void
.end method
