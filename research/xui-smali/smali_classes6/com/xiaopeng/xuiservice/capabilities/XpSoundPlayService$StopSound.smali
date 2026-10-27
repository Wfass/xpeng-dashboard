.class Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;
.super Ljava/lang/Object;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopSound"
.end annotation


# instance fields
.field shutUp:Z

.field signal:I

.field streamId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "signal"    # I
    .param p2, "streamId"    # I
    .param p3, "shutUp"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->signal:I

    .line 96
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    .line 97
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->shutUp:Z

    .line 98
    return-void
.end method
