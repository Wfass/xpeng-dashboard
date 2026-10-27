.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$0:Landroid/speech/tts/TextToSpeech;

    iput p2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$1:I

    iput-boolean p3, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$0:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$1:I

    iget-boolean v2, p0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;->f$2:Z

    invoke-virtual {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;->lambda$setSoloMode$23$TextToSpeech(IZLandroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
