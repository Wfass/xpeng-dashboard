.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "PowerTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

.field private He:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private Hf:Z

.field private Pi:Landroid/widget/Button;

.field private Pj:Landroid/widget/Button;

.field private Pk:Landroid/widget/Button;

.field private Pl:Landroid/widget/Button;

.field private Pm:Landroid/widget/Button;

.field private Pn:Landroid/widget/Button;

.field private Po:Landroid/widget/Button;

.field private Pp:Landroid/widget/Button;

.field private Pq:Landroid/widget/Button;

.field private Pr:Landroid/widget/Button;

.field private Ps:Landroid/widget/Button;

.field private Pt:Landroid/widget/Button;

.field private Pu:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 54
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->setContentView(I)V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->fm()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iK()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iN()V

    .line 60
    return-void
.end method

.method public fe()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 65
    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pi:Landroid/widget/Button;

    .line 66
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pj:Landroid/widget/Button;

    .line 67
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pk:Landroid/widget/Button;

    .line 68
    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pl:Landroid/widget/Button;

    .line 69
    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pm:Landroid/widget/Button;

    .line 70
    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pn:Landroid/widget/Button;

    .line 71
    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pq:Landroid/widget/Button;

    .line 72
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Po:Landroid/widget/Button;

    .line 73
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pp:Landroid/widget/Button;

    .line 74
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pr:Landroid/widget/Button;

    .line 75
    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pt:Landroid/widget/Button;

    .line 76
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Ps:Landroid/widget/Button;

    .line 77
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pu:Landroid/widget/Button;

    .line 78
    return-void
.end method

.method public ff()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pi:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pl:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Po:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pr:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Ps:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pi:Landroid/widget/Button;

    const v2, 0x7f09010b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pj:Landroid/widget/Button;

    const v2, 0x7f09011d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pk:Landroid/widget/Button;

    const v2, 0x7f09011e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pl:Landroid/widget/Button;

    const v2, 0x7f090104

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pm:Landroid/widget/Button;

    const v2, 0x7f090103

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pn:Landroid/widget/Button;

    const v2, 0x7f090137

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pq:Landroid/widget/Button;

    const v2, 0x7f090115

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Po:Landroid/widget/Button;

    const v2, 0x7f090120

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pp:Landroid/widget/Button;

    const v2, 0x7f09011a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pr:Landroid/widget/Button;

    const v2, 0x7f09012a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Pt:Landroid/widget/Button;

    const v2, 0x7f09010a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Ps:Landroid/widget/Button;

    const v2, 0x7f090121

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 152
    :sswitch_0
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/SWPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 154
    goto :goto_0

    .line 137
    :sswitch_1
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    const-string v0, "xp_power_report_"

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->bv(Ljava/lang/String;)V

    .line 139
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Hf:Z

    .line 140
    const p1, 0x7f100161

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 141
    goto :goto_0

    .line 169
    :sswitch_2
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/RadioPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 170
    goto :goto_0

    .line 173
    :sswitch_3
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/MicPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 174
    goto :goto_0

    .line 161
    :sswitch_4
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/MediaUsbPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 162
    goto :goto_0

    .line 133
    :sswitch_5
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 134
    goto :goto_0

    .line 129
    :sswitch_6
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 130
    goto :goto_0

    .line 165
    :sswitch_7
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/FaceUsbPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 166
    goto :goto_0

    .line 157
    :sswitch_8
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/DvrPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 158
    goto :goto_0

    .line 125
    :sswitch_9
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/BrightPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 126
    goto :goto_0

    .line 177
    :sswitch_a
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 178
    goto :goto_0

    .line 144
    :sswitch_b
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 145
    goto :goto_0

    .line 148
    :sswitch_c
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->d(Ljava/lang/Class;)V

    .line 149
    nop

    .line 184
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090103 -> :sswitch_c
        0x7f090104 -> :sswitch_b
        0x7f09010a -> :sswitch_a
        0x7f09010b -> :sswitch_9
        0x7f090115 -> :sswitch_8
        0x7f09011a -> :sswitch_7
        0x7f09011d -> :sswitch_6
        0x7f09011e -> :sswitch_5
        0x7f090120 -> :sswitch_4
        0x7f090121 -> :sswitch_3
        0x7f09012a -> :sswitch_2
        0x7f09012d -> :sswitch_1
        0x7f090137 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iO()V

    .line 197
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Hf:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    const-string v1, "xp_power_report_"

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->bv(Ljava/lang/String;)V

    .line 199
    const v0, 0x7f100162

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iM()V

    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;->He:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 119
    return-void
.end method
