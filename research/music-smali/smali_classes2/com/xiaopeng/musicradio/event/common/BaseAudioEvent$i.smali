.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;->a:I

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;->b:Ljava/lang/String;

    return-void
.end method
