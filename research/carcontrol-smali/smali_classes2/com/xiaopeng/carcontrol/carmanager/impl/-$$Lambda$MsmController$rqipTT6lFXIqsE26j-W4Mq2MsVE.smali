.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;->f$0:Ljava/util/Set;

    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;->f$0:Ljava/util/Set;

    iget v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$rqipTT6lFXIqsE26j-W4Mq2MsVE;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->lambda$startMassager$6(Ljava/util/Set;ILjava/lang/Integer;)V

    return-void
.end method
