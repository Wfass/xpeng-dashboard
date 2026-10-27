.class public final synthetic Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$sx5uncIPRWBTB16dn5cSSiwyWVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$sx5uncIPRWBTB16dn5cSSiwyWVI;->f$0:Landroid/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$sx5uncIPRWBTB16dn5cSSiwyWVI;->f$0:Landroid/car/hardware/CarPropertyValue;

    check-cast p1, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    invoke-static {v0, p1}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->lambda$onPropertyChanged$0(Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    return-void
.end method
