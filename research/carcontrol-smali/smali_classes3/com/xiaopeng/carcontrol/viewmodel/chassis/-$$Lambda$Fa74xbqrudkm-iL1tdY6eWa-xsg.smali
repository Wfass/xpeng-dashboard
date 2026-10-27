.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$Fa74xbqrudkm-iL1tdY6eWa-xsg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$Fa74xbqrudkm-iL1tdY6eWa-xsg;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$Fa74xbqrudkm-iL1tdY6eWa-xsg;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->setAvhImpl()V

    return-void
.end method
