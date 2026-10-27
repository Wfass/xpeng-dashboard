.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$wduYX8eBWBw3iNIiFdnlDfKyCjM;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->lambda$uploadForAIAssistant$1$CheckCarMode(Ljava/lang/String;)V

    return-void
.end method
