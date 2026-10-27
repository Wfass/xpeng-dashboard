.class Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$Holder;
.super Ljava/lang/Object;
.source "CarControlSpeechModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->access$000()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$Holder;->sInstance:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
    .locals 1

    .line 251
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$Holder;->sInstance:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    return-object v0
.end method
