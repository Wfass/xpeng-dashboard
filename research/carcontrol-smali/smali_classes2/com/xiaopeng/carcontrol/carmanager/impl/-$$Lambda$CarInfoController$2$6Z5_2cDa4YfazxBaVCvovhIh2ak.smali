.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->lambda$onSuccess$0$CarInfoController$2(Ljava/lang/String;)V

    return-void
.end method
