.class Lcom/xiaopeng/speech/config/RomCarSpeechConfig;
.super Ljava/lang/Object;
.source "RomCarSpeechConfig.java"

# interfaces
.implements Lcom/xiaopeng/speech/config/CarSpeechConfig;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOverseasCarType()Z
    .locals 1

    const-string v0, "config_carspeech_is_overseas"

    .line 8
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wakeupSoundAreaDisplayStatus()Z
    .locals 1

    const-string v0, "config_carspeech_wakeup_display_status"

    .line 13
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
