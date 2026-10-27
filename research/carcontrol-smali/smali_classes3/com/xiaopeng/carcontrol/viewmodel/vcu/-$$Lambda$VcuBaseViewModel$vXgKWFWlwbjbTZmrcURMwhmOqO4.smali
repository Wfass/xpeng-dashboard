.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$vXgKWFWlwbjbTZmrcURMwhmOqO4;->f$2:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->lambda$null$5$VcuBaseViewModel(IZLjava/lang/Boolean;)V

    return-void
.end method
