.class public final synthetic Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;

    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;->f$1:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;->f$0:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->lambda$updateErrorState$3$XpilotExamDialog(JLandroid/view/View;)V

    return-void
.end method
