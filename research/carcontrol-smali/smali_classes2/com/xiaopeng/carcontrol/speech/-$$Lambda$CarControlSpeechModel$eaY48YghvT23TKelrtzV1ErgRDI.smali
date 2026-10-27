.class public final synthetic Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;->f$0:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;->f$0:Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/speech/-$$Lambda$CarControlSpeechModel$eaY48YghvT23TKelrtzV1ErgRDI;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;->lambda$onLluEffectSet$2$CarControlSpeechModel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)V

    return-void
.end method
