.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$uNnKjeOy-ZekBsMFmow5Pd-t-v8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$uNnKjeOy-ZekBsMFmow5Pd-t-v8;->f$0:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$uNnKjeOy-ZekBsMFmow5Pd-t-v8;->f$0:Lcom/xiaopeng/xui/widget/XTextView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->lambda$initView$0(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V

    return-void
.end method
