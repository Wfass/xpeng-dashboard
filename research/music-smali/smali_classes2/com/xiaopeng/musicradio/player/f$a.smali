.class Lcom/xiaopeng/musicradio/player/f$a;
.super Ljava/lang/Object;
.source "LRUCacheEvictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/f$a;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/f$a;J)J
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/player/f$a;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/f$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/f$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/player/f$a;)J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/player/f$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/f$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/util/List;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/f$a;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/f$a;)I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/f$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
