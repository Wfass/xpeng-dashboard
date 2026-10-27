.class public Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AfterSalesBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Cs:Landroid/widget/Button;

.field private Ct:Landroid/widget/Button;

.field private Cu:Landroid/widget/Button;

.field private Cv:Landroid/widget/Button;

.field private Cw:Landroid/widget/Button;

.field private Cx:Landroid/widget/Button;

.field private Cy:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 24
    return-void
.end method

.method public fe()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 29
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Ct:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cu:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cv:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cw:Landroid/widget/Button;

    .line 33
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cx:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0900e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cs:Landroid/widget/Button;

    .line 35
    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cy:Landroid/widget/LinearLayout;

    .line 36
    return-void
.end method

.method public ff()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Ct:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cw:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cs:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 41
    iget v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->theme:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->Cy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 81
    :sswitch_0
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 82
    goto :goto_0

    .line 73
    :sswitch_1
    const-class p1, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 74
    goto :goto_0

    .line 69
    :sswitch_2
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 70
    goto :goto_0

    .line 61
    :sswitch_3
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 62
    goto :goto_0

    .line 65
    :sswitch_4
    const-class p1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 66
    goto :goto_0

    .line 77
    :sswitch_5
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->a(Ljava/lang/Class;I)V

    .line 78
    nop

    .line 87
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900d2 -> :sswitch_5
        0x7f0900e3 -> :sswitch_4
        0x7f0900e8 -> :sswitch_3
        0x7f0900ec -> :sswitch_2
        0x7f0900f1 -> :sswitch_1
        0x7f09013c -> :sswitch_0
    .end sparse-switch
.end method
