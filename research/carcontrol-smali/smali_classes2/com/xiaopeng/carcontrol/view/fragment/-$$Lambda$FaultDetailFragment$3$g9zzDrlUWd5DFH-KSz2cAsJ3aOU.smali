.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

.field public final synthetic f$1:Lcom/xiaopeng/xui/widget/XTextFields;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;Lcom/xiaopeng/xui/widget/XTextFields;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;->f$1:Lcom/xiaopeng/xui/widget/XTextFields;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;->f$1:Lcom/xiaopeng/xui/widget/XTextFields;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->lambda$onFailed$1$FaultDetailFragment$3(Lcom/xiaopeng/xui/widget/XTextFields;)V

    return-void
.end method
