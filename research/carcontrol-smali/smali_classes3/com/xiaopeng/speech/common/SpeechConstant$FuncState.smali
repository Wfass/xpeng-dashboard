.class public Lcom/xiaopeng/speech/common/SpeechConstant$FuncState;
.super Ljava/lang/Object;
.source "SpeechConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/SpeechConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncState"
.end annotation


# static fields
.field public static final CUSTOM_WAKEUP_WORD_STATE:I = 0x2

.field public static final IS_FIRST_QUERY:I = 0x3

.field public static final ONLY_SUPPRORT_SHORTCUT:I = 0x0

.field public static final RESET_AVATAR_ENABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
