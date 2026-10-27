.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "RGBActivity.java"


# instance fields
.field private Cr:Lcom/xiaopeng/devtools/view/ActionBar;

.field private LA:Landroid/widget/Button;

.field private LB:Landroid/widget/Button;

.field private LC:Landroid/widget/Button;

.field private LD:Landroid/widget/Button;

.field private LE:Landroid/widget/Button;

.field private LF:Landroid/widget/RelativeLayout;

.field private LG:Landroid/widget/LinearLayout;

.field private Lz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Lz:Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LA:Landroid/widget/Button;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LB:Landroid/widget/Button;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LC:Landroid/widget/Button;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LD:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LE:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LF:Landroid/widget/RelativeLayout;

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LG:Landroid/widget/LinearLayout;

    return-void
.end method

.method private t(II)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LF:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/view/ActionBar;->setVisibility(I)V

    .line 114
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LB:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LA:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Lz:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LC:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LD:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LE:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LG:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 38
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f100342

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->setTarget(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public fe()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 45
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/ActionBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 46
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Lz:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LA:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LB:Landroid/widget/Button;

    .line 49
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LC:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LD:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LE:Landroid/widget/Button;

    .line 52
    const v0, 0x7f090307

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LF:Landroid/widget/RelativeLayout;

    .line 53
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LG:Landroid/widget/LinearLayout;

    .line 54
    return-void
.end method

.method public ff()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Lz:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LD:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LE:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LF:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 59
    return-void
.end method

.method public mt()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 126
    return-void
.end method

.method public mu()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 131
    return-void
.end method

.method public mv()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090307

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    const v1, 0x7f080081

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LC:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 91
    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 92
    goto :goto_0

    .line 78
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->Lz:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    const/high16 p1, -0x10000

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LA:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 83
    const p1, -0xff0100

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 84
    goto :goto_0

    .line 94
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LD:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 95
    const p1, -0x808081

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 96
    goto :goto_0

    .line 86
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LB:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 87
    const p1, -0xffff01

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 88
    goto :goto_0

    .line 98
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->LE:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 99
    const/high16 p1, -0x1000000

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 100
    goto :goto_0

    .line 102
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/rgb/RGBActivity;->t(II)V

    .line 105
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900f3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
