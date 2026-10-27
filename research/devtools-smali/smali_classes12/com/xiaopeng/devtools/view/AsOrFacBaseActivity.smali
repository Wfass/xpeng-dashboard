.class public Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "AsOrFacBaseActivity.java"

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

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 26
    return-void
.end method

.method public fe()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 31
    const v0, 0x7f0900e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cs:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Ct:Landroid/widget/Button;

    .line 33
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cu:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cv:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cw:Landroid/widget/Button;

    .line 36
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cx:Landroid/widget/Button;

    .line 37
    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cy:Landroid/widget/LinearLayout;

    .line 38
    return-void
.end method

.method public ff()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->ff()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cs:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Ct:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cw:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 43
    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mw()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->Cy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onClick(Landroid/view/View;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 87
    goto :goto_0

    .line 78
    :sswitch_1
    const-class p1, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 79
    goto :goto_0

    .line 74
    :sswitch_2
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 75
    goto :goto_0

    .line 66
    :sswitch_3
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 67
    goto :goto_0

    .line 70
    :sswitch_4
    const-class p1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 71
    goto :goto_0

    .line 82
    :sswitch_5
    const-class p1, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;

    iget v0, p0, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->theme:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->a(Ljava/lang/Class;I)V

    .line 83
    nop

    .line 92
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
