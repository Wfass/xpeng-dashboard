.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$0:Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->lambda$onEvent$0$CarControlSpeechObserver(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
