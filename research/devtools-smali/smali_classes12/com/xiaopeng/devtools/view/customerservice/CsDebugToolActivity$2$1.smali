.class Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2$1;
.super Ljava/lang/Object;
.source "CsDebugToolActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FH:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2$1;->FH:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2$1;->FH:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2$1;->FH:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;

    iget-object v1, v1, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2$1;->FH:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1001bd

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method
