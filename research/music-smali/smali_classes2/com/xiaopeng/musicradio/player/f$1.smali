.class Lcom/xiaopeng/musicradio/player/f$1;
.super Ljava/lang/Object;
.source "LRUCacheEvictor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/f;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/player/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/f;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/f$1;->a:Lcom/xiaopeng/musicradio/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/f$a;Lcom/xiaopeng/musicradio/player/f$a;)I
    .locals 4

    .line 40
    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/f$a;->b(Lcom/xiaopeng/musicradio/player/f$a;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/xiaopeng/musicradio/player/f$a;->b(Lcom/xiaopeng/musicradio/player/f$a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/player/f$a;->a(Lcom/xiaopeng/musicradio/player/f$a;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/f$a;->b(Lcom/xiaopeng/musicradio/player/f$a;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/xiaopeng/musicradio/player/f$a;->b(Lcom/xiaopeng/musicradio/player/f$a;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/xiaopeng/musicradio/player/f$a;

    check-cast p2, Lcom/xiaopeng/musicradio/player/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/f$1;->a(Lcom/xiaopeng/musicradio/player/f$a;Lcom/xiaopeng/musicradio/player/f$a;)I

    move-result p1

    return p1
.end method
