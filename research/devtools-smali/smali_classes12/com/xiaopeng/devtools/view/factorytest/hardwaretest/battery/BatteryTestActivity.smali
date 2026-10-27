.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "BatteryTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;


# instance fields
.field private HZ:Landroid/widget/Button;

.field private Ia:Landroid/widget/Button;

.field private Ib:Landroid/widget/TextView;

.field private Ic:Landroid/widget/TextView;

.field private Id:Landroid/widget/TextView;

.field private Ie:Landroid/widget/TextView;

.field private If:Landroid/widget/TextView;

.field private Ig:Landroid/widget/TextView;

.field private Ih:Landroid/widget/TextView;

.field private Ii:Landroid/widget/TextView;

.field private Ij:Landroid/widget/TextView;

.field private Ik:Landroid/widget/TextView;

.field private Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    return-void
.end method

.method private cQ(I)Ljava/lang/String;
    .locals 3

    .line 133
    const-string v0, "BatteryTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    const p1, 0x7f100055

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 137
    :pswitch_1
    const p1, 0x7f100054

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    nop

    .line 145
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cR(I)Ljava/lang/String;
    .locals 3

    .line 149
    const-string v0, "BatteryTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellConnectDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    const p1, 0x7f100051

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    const p1, 0x7f100052

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    nop

    .line 161
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cS(I)Ljava/lang/String;
    .locals 3

    .line 165
    const-string v0, "BatteryTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStepupStateDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    const p1, 0x7f100072

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const p1, 0x7f100066

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    nop

    .line 177
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cT(I)Ljava/lang/String;
    .locals 3

    .line 181
    const-string v0, "BatteryTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDischargingStateDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    const p1, 0x7f10005b

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    const p1, 0x7f100065

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    nop

    .line 193
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;->init()V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/BatteryInfo;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ib:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getIncharging()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->cQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ic:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getVoltage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10044b

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Id:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getSoc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ie:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getDc_impedance()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->If:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getSoh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ig:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getCell_connect()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->cR(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ih:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getStepup_state()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->cS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ii:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getStepup_volt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ij:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getIndischarging()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->cT(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ik:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->getDischarge_current()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public fd()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 39
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->init()V

    .line 41
    const v0, 0x7f10031e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->setTarget(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public fe()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 47
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ib:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ic:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Id:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ie:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->If:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ig:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ih:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f09036e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ii:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ij:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ik:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->HZ:Landroid/widget/Button;

    .line 58
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ia:Landroid/widget/Button;

    .line 59
    return-void
.end method

.method public ff()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->ff()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->HZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Ia:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 64
    return-void
.end method

.method public mt()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mt()V

    .line 104
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public mu()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mu()V

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public mv()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mv()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090117

    if-eq v0, v1, :cond_1

    const v1, 0x7f090135

    if-eq v0, v1, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;->gh()V

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;->gi()V

    .line 93
    nop

    .line 99
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/BatteryTestActivity;->Il:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;->release()V

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onResume()V

    .line 76
    return-void
.end method
