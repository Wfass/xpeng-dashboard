.class Lcom/xiaopeng/musicradio/player/o$1;
.super Ljava/lang/Object;
.source "XpBandWidthMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/o;->b(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xiaopeng/musicradio/player/o;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/o;IJJ)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o$1;->d:Lcom/xiaopeng/musicradio/player/o;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/o$1;->a:I

    iput-wide p3, p0, Lcom/xiaopeng/musicradio/player/o$1;->b:J

    iput-wide p5, p0, Lcom/xiaopeng/musicradio/player/o$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/o$1;->d:Lcom/xiaopeng/musicradio/player/o;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/o;->a(Lcom/xiaopeng/musicradio/player/o;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/player/o$1;->a:I

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o$1;->b:J

    iget-wide v5, p0, Lcom/xiaopeng/musicradio/player/o$1;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method
