.class Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;
.super Landroid/util/FloatProperty;
.source "XRangeHorSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->access$100(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "object"
        }
    .end annotation

    .line 287
    check-cast p1, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;->get(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    .line 290
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;->access$000(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    .line 287
    check-cast p1, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider$1;->setValue(Lcom/xiaopeng/carcontrol/view/widget/XRangeHorSlider;F)V

    return-void
.end method
