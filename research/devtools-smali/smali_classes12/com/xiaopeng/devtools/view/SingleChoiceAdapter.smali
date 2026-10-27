.class public Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;
    }
.end annotation


# instance fields
.field private DA:Z

.field private Dy:[Ljava/lang/String;

.field private Dz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dz:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->DA:Z

    return-void
.end method

.method private synthetic a(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 74
    iget-boolean p2, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->DA:Z

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 75
    iput p1, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dz:I

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->notifyDataSetChanged()V

    .line 78
    :cond_0
    return-void
.end method

.method public static synthetic lambda$87gNQf6Z3WYhGYZxTxwZ6Kbh9b0(Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->a(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public cI(I)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dy:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 24
    nop

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dy:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dy:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->cI(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItem()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dz:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 56
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c009e

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;-><init>(Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$1;)V

    .line 59
    const v1, 0x7f090341

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XRadioButton;

    iput-object v1, p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;->DB:Lcom/xiaopeng/xui/widget/XRadioButton;

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;

    .line 65
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->DA:Z

    .line 66
    iget-object v1, p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;->DB:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->cI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v1, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dz:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 68
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;->DB:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;->DB:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    .line 73
    :goto_1
    iget-object p3, p3, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter$a;->DB:Lcom/xiaopeng/xui/widget/XRadioButton;

    new-instance v0, Lcom/xiaopeng/devtools/view/-$$Lambda$SingleChoiceAdapter$87gNQf6Z3WYhGYZxTxwZ6Kbh9b0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/-$$Lambda$SingleChoiceAdapter$87gNQf6Z3WYhGYZxTxwZ6Kbh9b0;-><init>(Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;I)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->DA:Z

    .line 80
    return-object p2
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dy:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/devtools/view/SingleChoiceAdapter;->Dz:I

    .line 47
    return-void
.end method
