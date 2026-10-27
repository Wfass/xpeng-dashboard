.class Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;
.super Ljava/lang/Object;
.source "AlsStudyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->cj(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    iput p2, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->val$status:I

    const v1, 0x1060017

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;->FQ:Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    nop

    .line 69
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
