.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;->a:I

    return v0
.end method
