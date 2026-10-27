.class public Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$LluControllerFactory;
.super Ljava/lang/Object;
.source "LluController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LluControllerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;-><init>(Landroid/car/Car;Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$1;)V

    return-object v0
.end method
