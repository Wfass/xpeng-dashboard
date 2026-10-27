.class public final Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
.super Ljava/lang/Object;
.source "SpeechContinue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->reason:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;
    .locals 2

    .line 65
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;-><init>(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$1;)V

    return-object v0
.end method

.method public fromMusic()Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
    .locals 1

    .line 50
    const-string v0, "music"

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->from:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public fromNavi()Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
    .locals 1

    .line 45
    const-string v0, "navi"

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->from:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setClick()Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
    .locals 1

    .line 55
    const-string v0, "click"

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->reason:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setClose()Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
    .locals 1

    .line 60
    const-string v0, "close"

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->reason:Ljava/lang/String;

    .line 61
    return-object p0
.end method
