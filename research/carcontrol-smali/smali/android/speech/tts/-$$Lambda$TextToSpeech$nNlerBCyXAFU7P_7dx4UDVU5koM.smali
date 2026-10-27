.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$nNlerBCyXAFU7P_7dx4UDVU5koM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$nNlerBCyXAFU7P_7dx4UDVU5koM;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$nNlerBCyXAFU7P_7dx4UDVU5koM;->f$0:I

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$isSpeaking$7(ILandroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
