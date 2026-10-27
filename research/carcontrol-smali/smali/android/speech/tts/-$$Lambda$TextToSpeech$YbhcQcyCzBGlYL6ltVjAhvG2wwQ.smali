.class public final synthetic Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# static fields
.field public static final synthetic INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;

    invoke-direct {v0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;-><init>()V

    sput-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->lambda$getVoices$14(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method
