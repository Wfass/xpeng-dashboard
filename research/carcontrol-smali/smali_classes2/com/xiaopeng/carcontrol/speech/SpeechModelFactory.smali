.class public Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;
.super Ljava/lang/Object;
.source "SpeechModelFactory.java"


# static fields
.field public static final CARCONTROL:Ljava/lang/String; = "carcontrol"

.field public static final HVAC:Ljava/lang/String; = "hvac"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "carcontrol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "} of SpeechModel"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->getInstance()Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    move-result-object p0

    return-object p0
.end method
