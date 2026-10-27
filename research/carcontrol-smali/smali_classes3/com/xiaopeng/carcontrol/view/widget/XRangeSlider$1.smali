.class Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;
.super Landroid/util/FloatProperty;
.source "XRangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;Ljava/lang/String;)V
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

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->access$100(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;)F

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

    .line 279
    check-cast p1, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;->get(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;F)V
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

    .line 282
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;->access$000(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;F)V

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

    .line 279
    check-cast p1, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider$1;->setValue(Lcom/xiaopeng/carcontrol/view/widget/XRangeSlider;F)V

    return-void
.end method
