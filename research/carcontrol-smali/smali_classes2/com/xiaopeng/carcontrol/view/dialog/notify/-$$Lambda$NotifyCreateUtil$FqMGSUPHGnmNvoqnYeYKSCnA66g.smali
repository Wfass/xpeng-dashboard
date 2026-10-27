.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$NotifyCreateUtil$FqMGSUPHGnmNvoqnYeYKSCnA66g;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->lambda$createSaveDoneNotification$2$NotifyCreateUtil(Landroid/content/Context;I)V

    return-void
.end method
