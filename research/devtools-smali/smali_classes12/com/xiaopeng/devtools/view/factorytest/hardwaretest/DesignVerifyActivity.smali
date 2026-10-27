.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "DesignVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

.field private GF:Landroid/widget/Button;

.field private GG:Landroid/widget/Button;

.field private GH:Landroid/widget/Button;

.field private GI:Landroid/widget/Button;

.field private GJ:Landroid/widget/Button;

.field private GK:Landroid/widget/Button;

.field private GL:Landroid/widget/Button;

.field private GM:Landroid/widget/Button;

.field private GN:Landroid/widget/Button;

.field private GO:Landroid/widget/Button;

.field private GP:Landroid/widget/Button;

.field private GQ:Landroid/widget/Button;

.field private GR:Landroid/widget/Button;

.field private GS:Landroid/widget/Button;

.field private GU:Landroid/widget/Button;

.field private GV:Landroid/widget/Button;

.field private GW:Landroid/widget/Button;

.field private GX:Landroid/widget/Button;

.field private GY:Landroid/widget/Button;

.field private GZ:Landroid/widget/Button;

.field private Ha:Landroid/widget/Button;

.field private Hb:Landroid/widget/Button;

.field private Hc:Landroid/widget/Button;

.field private Hd:Landroid/widget/Button;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 55
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->setContentView(I)V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->fm()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iN()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iP()V

    .line 61
    return-void
.end method

.method public fe()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 66
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GF:Landroid/widget/Button;

    .line 67
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GG:Landroid/widget/Button;

    .line 68
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GI:Landroid/widget/Button;

    .line 69
    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GH:Landroid/widget/Button;

    .line 70
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GJ:Landroid/widget/Button;

    .line 71
    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GK:Landroid/widget/Button;

    .line 72
    const v0, 0x7f090107

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GL:Landroid/widget/Button;

    .line 73
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GM:Landroid/widget/Button;

    .line 74
    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GN:Landroid/widget/Button;

    .line 75
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GO:Landroid/widget/Button;

    .line 76
    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GP:Landroid/widget/Button;

    .line 77
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GQ:Landroid/widget/Button;

    .line 78
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GR:Landroid/widget/Button;

    .line 79
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GS:Landroid/widget/Button;

    .line 80
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GU:Landroid/widget/Button;

    .line 81
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GV:Landroid/widget/Button;

    .line 82
    const v0, 0x7f090116

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GW:Landroid/widget/Button;

    .line 83
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GX:Landroid/widget/Button;

    .line 84
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GY:Landroid/widget/Button;

    .line 85
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GZ:Landroid/widget/Button;

    .line 86
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Ha:Landroid/widget/Button;

    .line 87
    const v0, 0x7f09010a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hb:Landroid/widget/Button;

    .line 88
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hc:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hd:Landroid/widget/Button;

    .line 90
    return-void
.end method

.method public ff()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GJ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GM:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GU:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GV:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Ha:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 95
    const-string v0, "TEST_RADIO"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GM:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    :cond_0
    const-string v0, "SREEN_SELTEST"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hd:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09013a

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GF:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09010c

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GG:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09013b

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GH:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09010e

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GJ:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090102

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GK:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090107

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GL:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090129

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GM:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090128

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GN:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090139

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GP:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09012e

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GQ:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09012c

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GR:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090133

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GS:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090130

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GU:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09011c

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GV:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090116

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GW:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09010f

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GX:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090131

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GY:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f09010a

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hb:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090109

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->GZ:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090127

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Ha:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f090138

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hc:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    const v1, 0x7f0900f9

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hd:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 194
    :sswitch_0
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 195
    goto/16 :goto_0

    .line 179
    :sswitch_1
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 180
    goto/16 :goto_0

    .line 224
    :sswitch_2
    goto/16 :goto_0

    .line 262
    :sswitch_3
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 263
    goto/16 :goto_0

    .line 234
    :sswitch_4
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 235
    goto/16 :goto_0

    .line 251
    :sswitch_5
    goto/16 :goto_0

    .line 238
    :sswitch_6
    goto/16 :goto_0

    .line 227
    :sswitch_7
    goto/16 :goto_0

    .line 187
    :sswitch_8
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    const-string v0, "xp_hardware_report_"

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->bv(Ljava/lang/String;)V

    .line 189
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hf:Z

    .line 190
    const p1, 0x7f100161

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 191
    goto :goto_0

    .line 230
    :sswitch_9
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 231
    goto :goto_0

    .line 214
    :sswitch_a
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 215
    goto :goto_0

    .line 218
    :sswitch_b
    goto :goto_0

    .line 258
    :sswitch_c
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 259
    goto :goto_0

    .line 241
    :sswitch_d
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 242
    goto :goto_0

    .line 221
    :sswitch_e
    goto :goto_0

    .line 245
    :sswitch_f
    goto :goto_0

    .line 248
    :sswitch_10
    goto :goto_0

    .line 202
    :sswitch_11
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 203
    goto :goto_0

    .line 183
    :sswitch_12
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 184
    goto :goto_0

    .line 270
    :sswitch_13
    goto :goto_0

    .line 254
    :sswitch_14
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 255
    goto :goto_0

    .line 210
    :sswitch_15
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 211
    goto :goto_0

    .line 206
    :sswitch_16
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 207
    goto :goto_0

    .line 266
    :sswitch_17
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 267
    goto :goto_0

    .line 198
    :sswitch_18
    const-class p1, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->d(Ljava/lang/Class;)V

    .line 199
    nop

    .line 276
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900f1 -> :sswitch_18
        0x7f0900f9 -> :sswitch_17
        0x7f090102 -> :sswitch_16
        0x7f090107 -> :sswitch_15
        0x7f090109 -> :sswitch_14
        0x7f09010a -> :sswitch_13
        0x7f09010c -> :sswitch_12
        0x7f09010e -> :sswitch_11
        0x7f09010f -> :sswitch_10
        0x7f090116 -> :sswitch_f
        0x7f090119 -> :sswitch_e
        0x7f09011c -> :sswitch_d
        0x7f090127 -> :sswitch_c
        0x7f090128 -> :sswitch_b
        0x7f090129 -> :sswitch_a
        0x7f09012c -> :sswitch_9
        0x7f09012d -> :sswitch_8
        0x7f09012e -> :sswitch_7
        0x7f090130 -> :sswitch_6
        0x7f090131 -> :sswitch_5
        0x7f090133 -> :sswitch_4
        0x7f090138 -> :sswitch_3
        0x7f090139 -> :sswitch_2
        0x7f09013a -> :sswitch_1
        0x7f09013b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Hf:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    const-string v1, "xp_hardware_report_"

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->bv(Ljava/lang/String;)V

    .line 168
    const v0, 0x7f100162

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iO()V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iQ()V

    .line 172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/DesignVerifyActivity;->He:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 159
    return-void
.end method
