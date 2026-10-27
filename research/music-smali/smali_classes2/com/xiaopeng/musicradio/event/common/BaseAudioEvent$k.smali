.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->a:I

    const/4 p1, 0x0

    .line 593
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->a:I

    .line 598
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->b:I

    return v0
.end method
