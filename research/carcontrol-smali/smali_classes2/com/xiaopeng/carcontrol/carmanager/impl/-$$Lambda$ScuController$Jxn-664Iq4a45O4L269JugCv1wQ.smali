.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$1:Z

    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$1:Z

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;->f$2:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->lambda$setLccState$25$ScuController(ZZLjava/lang/Void;)V

    return-void
.end method
