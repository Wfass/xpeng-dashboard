.class public Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "NationalStandardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private He:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private Ra:Landroid/widget/Button;

.field private Rb:Landroid/widget/Button;

.field private Rc:Landroid/widget/Button;

.field private Rd:Landroid/widget/Button;

.field private Re:Landroid/widget/Button;

.field private Rf:Landroid/widget/Button;

.field private Rg:Landroid/widget/Button;

.field private Rh:Landroid/widget/Button;

.field private Ri:Landroid/widget/Button;

.field private Rj:Landroid/widget/Button;

.field private Rk:Landroid/widget/Button;

.field private Rl:Landroid/widget/EditText;

.field private Rm:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private a(ILcom/xiaopeng/devtools/bean/car/IPNPort;)V
    .locals 3

    .line 186
    const-string v0, "DesignVerifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "control key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlIPMsg;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlIPMsg;-><init>(ILcom/xiaopeng/devtools/bean/car/IPNPort;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->a(Lcom/xiaopeng/devtools/bean/car/TboxCanControlIPMsg;)V

    .line 188
    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private e(ILjava/lang/String;)V
    .locals 3

    .line 191
    const-string v0, "DesignVerifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "control key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->a(Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;)V

    .line 193
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 42
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->setContentView(I)V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    .line 44
    return-void
.end method

.method public fe()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 49
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rl:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rm:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ra:Landroid/widget/Button;

    .line 52
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rb:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0902ba

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rc:Landroid/widget/Button;

    .line 54
    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rd:Landroid/widget/Button;

    .line 55
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Re:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0902dd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rf:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0902de

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rg:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0902df

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rh:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0902e0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ri:Landroid/widget/Button;

    .line 60
    const v0, 0x7f090387

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rj:Landroid/widget/Button;

    .line 61
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rk:Landroid/widget/Button;

    .line 62
    return-void
.end method

.method public ff()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ra:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Re:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rf:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ri:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ra:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ra:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rb:Landroid/widget/Button;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rb:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rc:Landroid/widget/Button;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rc:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rd:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rd:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Re:Landroid/widget/Button;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Re:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rf:Landroid/widget/Button;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rf:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rg:Landroid/widget/Button;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rg:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rh:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rh:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ri:Landroid/widget/Button;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Ri:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rj:Landroid/widget/Button;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rj:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rk:Landroid/widget/Button;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 158
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 173
    :sswitch_0
    const-string p1, "1"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->e(ILjava/lang/String;)V

    .line 174
    goto :goto_1

    .line 160
    :sswitch_1
    new-instance p1, Lcom/xiaopeng/devtools/bean/car/IPNPort;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->Rm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/xiaopeng/devtools/bean/car/IPNPort;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->a(ILcom/xiaopeng/devtools/bean/car/IPNPort;)V

    .line 162
    goto :goto_1

    .line 176
    :sswitch_2
    const-class p1, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->d(Ljava/lang/Class;)V

    .line 177
    nop

    .line 183
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_2
        0x7f0900d4 -> :sswitch_1
        0x7f09014f -> :sswitch_0
        0x7f090193 -> :sswitch_0
        0x7f090194 -> :sswitch_0
        0x7f0902ba -> :sswitch_0
        0x7f0902dd -> :sswitch_0
        0x7f0902de -> :sswitch_0
        0x7f0902df -> :sswitch_0
        0x7f0902e0 -> :sswitch_0
        0x7f090387 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 151
    const-string v0, "3"

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->e(ILjava/lang/String;)V

    .line 152
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 117
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101016

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    const-string v0, "DesignVerifyActivity"

    const-string v1, "ID_TBOX_CAN_CONTROLLER"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;->getButton()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->He:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 124
    if-nez v1, :cond_1

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getColor()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 138
    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 135
    :pswitch_0
    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 136
    goto :goto_1

    .line 132
    :pswitch_1
    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    goto :goto_1

    .line 129
    :pswitch_2
    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    nop

    .line 141
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    goto :goto_0

    .line 146
    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 112
    const-string v0, "5"

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/NationalStandardActivity;->e(ILjava/lang/String;)V

    .line 113
    return-void
.end method
