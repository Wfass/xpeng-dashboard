.class public Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "CfcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private He:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private Un:Landroid/widget/RadioButton;

.field private Uo:Landroid/widget/RadioButton;

.field private Up:Landroid/widget/RadioButton;

.field private Uq:Landroid/widget/RadioButton;

.field private Ur:Landroid/widget/RadioButton;

.field private Us:Landroid/widget/RadioButton;

.field private Ut:Landroid/widget/RadioButton;

.field private Uu:Landroid/widget/RadioButton;

.field private Uv:Landroid/widget/RadioButton;

.field private Uw:Landroid/widget/RadioButton;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    return-void
.end method

.method public static synthetic lambda$DHZCn21hJ0qeWVlwb0wqXaudiaE(Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->nX()V

    return-void
.end method

.method private synthetic nX()V
    .locals 3

    .line 100
    const-string v0, "CfcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/r;->cF(I)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CfcActivity"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 30
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->setContentView(I)V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method public fe()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 38
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Un:Landroid/widget/RadioButton;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Un:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Un:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    const v0, 0x7f090174

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uo:Landroid/widget/RadioButton;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uo:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uo:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    const v0, 0x7f090175

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Up:Landroid/widget/RadioButton;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Up:Landroid/widget/RadioButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Up:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    const v0, 0x7f090176

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uq:Landroid/widget/RadioButton;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uq:Landroid/widget/RadioButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uq:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ur:Landroid/widget/RadioButton;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ur:Landroid/widget/RadioButton;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ur:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Us:Landroid/widget/RadioButton;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Us:Landroid/widget/RadioButton;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Us:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ut:Landroid/widget/RadioButton;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ut:Landroid/widget/RadioButton;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uu:Landroid/widget/RadioButton;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uu:Landroid/widget/RadioButton;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uu:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uv:Landroid/widget/RadioButton;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uv:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uv:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uw:Landroid/widget/RadioButton;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uw:Landroid/widget/RadioButton;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uw:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public ff()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 81
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Un:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uo:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Up:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uq:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ur:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Us:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Ut:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uu:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uv:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->Uw:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 73
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lv()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    .line 74
    const-string v0, "CfcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setView index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->He:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 119
    const-string v0, "CfcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged buttonView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;->index:I

    .line 123
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    const-string v0, "CfcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900b7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$CfcActivity$DHZCn21hJ0qeWVlwb0wqXaudiaE;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$CfcActivity$DHZCn21hJ0qeWVlwb0wqXaudiaE;-><init>(Lcom/xiaopeng/devtools/view/usersettings/CfcActivity;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 104
    nop

    .line 109
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 114
    return-void
.end method
