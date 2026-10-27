.class Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;
.super Ljava/lang/Object;
.source "AospCarDiagnosticManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->onDiagnosticEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;

.field final synthetic val$eventToDispatch:Landroid/car/diagnostic/CarDiagnosticEvent;


# direct methods
.method constructor <init>(Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;Landroid/car/diagnostic/CarDiagnosticEvent;)V
    .locals 0

    .line 398
    iput-object p1, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;->this$1:Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;

    iput-object p2, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;->val$eventToDispatch:Landroid/car/diagnostic/CarDiagnosticEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;)V
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;->val$eventToDispatch:Landroid/car/diagnostic/CarDiagnosticEvent;

    invoke-interface {p1, v0}, Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;->onDiagnosticEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 398
    check-cast p1, Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;->accept(Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;)V

    return-void
.end method
