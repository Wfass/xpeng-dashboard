.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

.field public final synthetic f$1:Lcom/xiaopeng/xui/widget/XTextFields;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;Lcom/xiaopeng/xui/widget/XTextFields;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$1:Lcom/xiaopeng/xui/widget/XTextFields;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$1:Lcom/xiaopeng/xui/widget/XTextFields;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->lambda$onSuccess$0$FaultDetailFragment$3(Lcom/xiaopeng/xui/widget/XTextFields;Ljava/lang/String;)V

    return-void
.end method
