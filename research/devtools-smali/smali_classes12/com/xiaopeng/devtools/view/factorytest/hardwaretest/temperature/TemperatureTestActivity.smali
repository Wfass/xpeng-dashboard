.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "TemperatureTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;


# static fields
.field private static final LW:[Ljava/lang/Integer;


# instance fields
.field private LX:Landroid/widget/Spinner;

.field private LY:Landroid/widget/TextView;

.field private LZ:Landroid/widget/TextView;

.field private Ma:Landroid/widget/TextView;

.field private Mb:Landroid/widget/TextView;

.field private Mc:Landroid/widget/TextView;

.field private Md:Landroid/widget/TextView;

.field private Me:Landroid/widget/TextView;

.field private Mf:Landroid/widget/TextView;

.field private Mg:Landroid/widget/TextView;

.field private Mh:Landroid/widget/TextView;

.field private Mi:Landroid/widget/TextView;

.field private Mj:Landroid/widget/LinearLayout;

.field private Mk:Landroid/widget/LinearLayout;

.field private Ml:Landroid/widget/LinearLayout;

.field private Mm:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LW:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mm:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    return-object p0
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mh:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->getMcuTemp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const-string v0, "SUPPORT_PCB_TEMP"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mi:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->getPcbTemp()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mg:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/McuTempInfo;->getBattTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Me:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatTbox()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mf:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatTmcu()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mg:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatBbat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LY:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getCpuTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LZ:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getSocTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mb:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getUfsTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Ma:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getDdrTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Md:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getPmicTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;->getAmpTemp()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public static synthetic lambda$AnEyGq1qhawHXEZ5syb1uQjznMg(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->b(Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V

    return-void
.end method

.method public static synthetic lambda$JZG6qimO3WnOhtpTCkGLgcMlITE(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->b(Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V

    return-void
.end method

.method public static synthetic lambda$nblUIU0zl-_yMH9h9IA0dKmbGlw(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->b(Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V

    return-void
.end method

.method static synthetic mO()[Ljava/lang/Integer;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LW:[Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V
    .locals 1

    .line 149
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$AnEyGq1qhawHXEZ5syb1uQjznMg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$AnEyGq1qhawHXEZ5syb1uQjznMg;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/car/McuTempInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$nblUIU0zl-_yMH9h9IA0dKmbGlw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$nblUIU0zl-_yMH9h9IA0dKmbGlw;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$JZG6qimO3WnOhtpTCkGLgcMlITE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/-$$Lambda$TemperatureTestActivity$JZG6qimO3WnOhtpTCkGLgcMlITE;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;Lcom/xiaopeng/devtools/bean/factorytest/AndTempInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public fd()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 39
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f10034a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->setTarget(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mm:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    .line 42
    return-void
.end method

.method public fe()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 47
    const v0, 0x7f090393

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LY:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090396

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LZ:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f090399

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Ma:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0903a8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mb:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f09038d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mc:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09039f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Md:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0903a2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Me:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0903a5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mf:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f090390

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mg:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f09038a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mh:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f09039c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mi:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0903ab

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LX:Landroid/widget/Spinner;

    .line 59
    const v0, 0x7f0903a0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mj:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f0903a3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mk:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f09039a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Ml:Landroid/widget/LinearLayout;

    .line 62
    return-void
.end method

.method public ff()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LX:Landroid/widget/Spinner;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LX:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->LW:[Ljava/lang/Integer;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    const-string v0, "SUPPORT_PCB_TEMP"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Ml:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    :cond_0
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mj:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :cond_1
    return-void
.end method

.method public mt()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 112
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public mu()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public mv()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mm:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->destroy()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->Mm:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k/a;->jt()V

    .line 97
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    const-string v0, "temperature diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/temperature/TemperatureTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method
