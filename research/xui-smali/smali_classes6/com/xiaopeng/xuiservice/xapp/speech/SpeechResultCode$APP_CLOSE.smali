.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode$APP_CLOSE;
.super Ljava/lang/Object;
.source "SpeechResultCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APP_CLOSE"
.end annotation


# static fields
.field public static final APP_CLOSE_SUCCESS:I = 0x1

.field public static final APP_HAVE_CLOSED:I = 0x2

.field public static final APP_HAVE_OPEN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
