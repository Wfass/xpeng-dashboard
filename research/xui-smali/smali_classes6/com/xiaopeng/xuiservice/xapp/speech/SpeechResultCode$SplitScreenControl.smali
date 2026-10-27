.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode$SplitScreenControl;
.super Ljava/lang/Object;
.source "SpeechResultCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreenControl"
.end annotation


# static fields
.field public static final CODE_ALREADY_SPLIT_SCREEN:I = 0x2

.field public static final CODE_APP_NOT_FOREGROUND:I = 0x3

.field public static final CODE_NOT_SUPPORT:I = 0x1

.field public static final CODE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
