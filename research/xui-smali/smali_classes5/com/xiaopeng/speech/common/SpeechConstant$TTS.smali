.class public Lcom/xiaopeng/speech/common/SpeechConstant$TTS;
.super Ljava/lang/Object;
.source "SpeechConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/SpeechConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTS"
.end annotation


# static fields
.field public static final END_STATE_ERROR:I = 0x1

.field public static final END_STATE_INTERRUPTED:I = 0x2

.field public static final END_STATE_SUCCESS:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_INTERNAL:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_SUPUER:I = 0x3

.field public static final PRIORITY_URGENT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
