.class public Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$EspControllerFactory;
.super Ljava/lang/Object;
.source "EspController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EspControllerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;-><init>(Landroid/car/Car;)V

    return-object v0
.end method
