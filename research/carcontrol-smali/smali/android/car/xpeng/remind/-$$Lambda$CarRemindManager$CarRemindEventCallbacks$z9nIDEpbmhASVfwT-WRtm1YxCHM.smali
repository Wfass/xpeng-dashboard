.class public final synthetic Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;->f$0:I

    iput p2, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;->f$0:I

    iget v1, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;->f$1:I

    check-cast p1, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    invoke-static {v0, v1, p1}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->lambda$onErrorEvent$1(IILandroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    return-void
.end method
