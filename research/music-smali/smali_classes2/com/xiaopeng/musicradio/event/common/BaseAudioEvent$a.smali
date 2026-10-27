.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;->a:I

    return v0
.end method
