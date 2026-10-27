.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "x"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->a:I

    .line 528
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->b:I

    .line 529
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->c:I

    .line 530
    iput p4, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->d:I

    .line 531
    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->f:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 523
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->f:Z

    return v0
.end method
