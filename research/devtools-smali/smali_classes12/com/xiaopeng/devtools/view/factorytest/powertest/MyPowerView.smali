.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;
.super Landroid/widget/LinearLayout;
.source "MyPowerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;
    }
.end annotation


# instance fields
.field private Pb:Landroid/widget/TextView;

.field private Pc:Landroid/widget/TextView;

.field private Pd:Landroid/widget/Button;

.field private Pe:Landroid/widget/Button;

.field private Pf:Landroid/widget/Button;

.field private Pg:Landroid/widget/Button;

.field private Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v0, 0x7f0903f6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pb:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0902e9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pc:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pd:Landroid/widget/Button;

    .line 42
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pe:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pf:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pg:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pe:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pf:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;->nz()V

    .line 92
    goto :goto_0

    .line 87
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;->nx()V

    .line 88
    goto :goto_0

    .line 83
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;->ny()V

    .line 84
    goto :goto_0

    .line 95
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;->nA()V

    .line 98
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09009f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setControlOffEnableStatus(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    return-void
.end method

.method public setControlOnEnableStatus(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pf:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method public setCurrentState(Ljava/lang/String;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f10038b

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setOnControlListener(Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Ph:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;

    .line 68
    return-void
.end method

.method public setResult(Z)V
    .locals 2

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pc:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pc:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->Pc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :goto_0
    return-void
.end method
