.class public Lcom/xiaopeng/speech/common/SpeechConstant$PhoneStatus;
.super Ljava/lang/Object;
.source "SpeechConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/SpeechConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneStatus"
.end annotation


# static fields
.field public static final CALL_AUDIO_IN:I = 0x4

.field public static final CALL_AUDIO_OUT:I = 0x5

.field public static final CALL_END:I = 0x0

.field public static final CALL_INCOMING:I = 0x1

.field public static final CALL_IN_CALL:I = 0x3

.field public static final CALL_OUTGOING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
