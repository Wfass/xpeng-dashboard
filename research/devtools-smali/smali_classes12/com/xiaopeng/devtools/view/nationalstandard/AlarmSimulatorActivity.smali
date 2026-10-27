.class public Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AlarmSimulatorActivity.java"

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

.field private QF:Landroid/widget/Button;

.field private QG:Landroid/widget/Button;

.field private QH:Landroid/widget/Button;

.field private QI:Landroid/widget/Button;

.field private QJ:Landroid/widget/Button;

.field private QK:Landroid/widget/Button;

.field private QL:Landroid/widget/Button;

.field private QM:Landroid/widget/Button;

.field private QN:Landroid/widget/Button;

.field private QO:Landroid/widget/Button;

.field private QP:Landroid/widget/Button;

.field private QQ:Landroid/widget/Button;

.field private QR:Landroid/widget/Button;

.field private QS:Landroid/widget/Button;

.field private QT:Landroid/widget/Button;

.field private QU:Landroid/widget/Button;

.field private QV:Landroid/widget/Button;

.field private QW:Landroid/widget/Button;

.field private QX:Landroid/widget/Button;

.field private QY:Landroid/widget/Button;

.field private QZ:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private e(ILjava/lang/String;)V
    .locals 3

    .line 223
    const-string v0, "AlarmSimulatorActivity"

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

    .line 224
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->a(Lcom/xiaopeng/devtools/bean/car/TboxCanControlMsg;)V

    .line 225
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 39
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->setContentView(I)V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method public fe()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 46
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QF:Landroid/widget/Button;

    .line 47
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QG:Landroid/widget/Button;

    .line 48
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QH:Landroid/widget/Button;

    .line 49
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QI:Landroid/widget/Button;

    .line 50
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QJ:Landroid/widget/Button;

    .line 51
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QK:Landroid/widget/Button;

    .line 52
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QL:Landroid/widget/Button;

    .line 53
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QM:Landroid/widget/Button;

    .line 54
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QN:Landroid/widget/Button;

    .line 55
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QO:Landroid/widget/Button;

    .line 56
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QP:Landroid/widget/Button;

    .line 57
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QQ:Landroid/widget/Button;

    .line 58
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QR:Landroid/widget/Button;

    .line 59
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QS:Landroid/widget/Button;

    .line 60
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QT:Landroid/widget/Button;

    .line 61
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QU:Landroid/widget/Button;

    .line 62
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QV:Landroid/widget/Button;

    .line 63
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QW:Landroid/widget/Button;

    .line 64
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QX:Landroid/widget/Button;

    .line 65
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QY:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0902ff

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QZ:Landroid/widget/Button;

    .line 67
    return-void
.end method

.method public ff()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QJ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QM:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QU:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QV:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 72
    nop

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QF:Landroid/widget/Button;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QF:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QG:Landroid/widget/Button;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QG:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QH:Landroid/widget/Button;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QH:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QI:Landroid/widget/Button;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QI:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QJ:Landroid/widget/Button;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QJ:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QK:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QK:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QL:Landroid/widget/Button;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QL:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QM:Landroid/widget/Button;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QM:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QN:Landroid/widget/Button;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QN:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QO:Landroid/widget/Button;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QO:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QP:Landroid/widget/Button;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QP:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QQ:Landroid/widget/Button;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QQ:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QR:Landroid/widget/Button;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QR:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QS:Landroid/widget/Button;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QS:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QT:Landroid/widget/Button;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QT:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QU:Landroid/widget/Button;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QU:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QV:Landroid/widget/Button;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QV:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QW:Landroid/widget/Button;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QW:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QX:Landroid/widget/Button;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QX:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QY:Landroid/widget/Button;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->QY:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
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

    .line 189
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090069

    if-eq p1, v1, :cond_2

    const v1, 0x7f0902ff

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->finish()V

    .line 214
    goto :goto_1

    .line 210
    :cond_2
    :pswitch_0
    const-string p1, "1"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->e(ILjava/lang/String;)V

    .line 211
    nop

    .line 220
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090055
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 183
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 150
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101016

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    const-string v0, "AlarmSimulatorActivity"

    const-string v1, "ID_TBOX_CAN_CONTROLLER"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;

    .line 155
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

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->He:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 157
    if-nez v1, :cond_1

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getColor()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 168
    :pswitch_0
    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 169
    goto :goto_1

    .line 165
    :pswitch_1
    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 166
    goto :goto_1

    .line 162
    :pswitch_2
    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    nop

    .line 174
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    goto :goto_0

    .line 178
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

    .line 144
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 145
    const-string v0, "4"

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/devtools/view/nationalstandard/AlarmSimulatorActivity;->e(ILjava/lang/String;)V

    .line 146
    return-void
.end method
