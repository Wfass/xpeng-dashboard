.class public Lblr;
.super Ljava/lang/Object;
.source "PlayRecordTrack.java"


# instance fields
.field private a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_id"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "played_secs"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "started_at"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ended_at"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lblr;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 74
    iput p1, p0, Lblr;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lblr;->a:J

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lblr;->b:J

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lblr;->c:J

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lblr;->d:J

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lblr;->e:J

    return-void
.end method
