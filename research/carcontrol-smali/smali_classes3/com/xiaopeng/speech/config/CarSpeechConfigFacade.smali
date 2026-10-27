.class public Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;
.super Ljava/lang/Object;
.source "CarSpeechConfigFacade.java"


# static fields
.field private static carSpeechConfigDelegate:Lcom/xiaopeng/speech/config/CarSpeechConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/speech/config/RomCarSpeechConfig;

    invoke-direct {v0}, Lcom/xiaopeng/speech/config/RomCarSpeechConfig;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->setDelegate(Lcom/xiaopeng/speech/config/CarSpeechConfig;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOverseasCarType()Z
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->carSpeechConfigDelegate:Lcom/xiaopeng/speech/config/CarSpeechConfig;

    invoke-interface {v0}, Lcom/xiaopeng/speech/config/CarSpeechConfig;->isOverseasCarType()Z

    move-result v0

    return v0
.end method

.method public static setDelegate(Lcom/xiaopeng/speech/config/CarSpeechConfig;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->carSpeechConfigDelegate:Lcom/xiaopeng/speech/config/CarSpeechConfig;

    return-void
.end method

.method public static wakeupSoundAreaDisplayStatus()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->carSpeechConfigDelegate:Lcom/xiaopeng/speech/config/CarSpeechConfig;

    invoke-interface {v0}, Lcom/xiaopeng/speech/config/CarSpeechConfig;->wakeupSoundAreaDisplayStatus()Z

    move-result v0

    return v0
.end method
