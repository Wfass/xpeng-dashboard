.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->lambda$onQuery$1$CarControlSpeechObserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
