.class Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
.super Ljava/lang/Object;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaySound"
.end annotation


# instance fields
.field hasDownVolume:Z

.field leftVolume:F

.field loop:I

.field name:Ljava/lang/String;

.field position:I

.field priority:I

.field rightVolume:F

.field sampleId:I

.field signal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IFFIIIZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signal"    # I
    .param p3, "leftVolume"    # F
    .param p4, "rightVolume"    # F
    .param p5, "position"    # I
    .param p6, "priority"    # I
    .param p7, "loop"    # I
    .param p8, "hasDownVolume"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->name:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    .line 80
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->leftVolume:F

    .line 81
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->rightVolume:F

    .line 82
    iput p5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->position:I

    .line 83
    iput p6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    .line 84
    iput p7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    .line 85
    iput-boolean p8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->hasDownVolume:Z

    .line 86
    return-void
.end method
