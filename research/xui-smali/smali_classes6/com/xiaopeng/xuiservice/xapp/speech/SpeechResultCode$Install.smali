.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode$Install;
.super Ljava/lang/Object;
.source "SpeechResultCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Install"
.end annotation


# static fields
.field public static final ALREADY_DOWNLOAD:I = 0x4

.field public static final DOWNLOADING:I = 0x6

.field public static final JUMP_AND_DOWNLOAD:I = 0x3

.field public static final NOT_AGREE_AGREEMENT:I = 0x1

.field public static final NOT_EXIST_IN_REMOTE:I = 0x5

.field public static final NOT_LOGIN:I = 0x2

.field public static final STATE_APP_SUSPEND:I = 0x7

.field public static final STATE_APP_TIPS:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
