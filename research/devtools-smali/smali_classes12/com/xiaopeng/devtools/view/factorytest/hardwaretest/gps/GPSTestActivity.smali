.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "GPSTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;


# instance fields
.field private JF:Landroid/widget/TextView;

.field private JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

.field private JI:Landroid/widget/TextView;

.field private JJ:Landroid/widget/TextView;

.field private JK:Landroid/widget/TextView;

.field private JL:Landroid/widget/TextView;

.field private JM:Landroid/widget/TextView;

.field private JN:Landroid/widget/TextView;

.field private JO:Landroid/widget/ListView;

.field private JP:Landroid/widget/Button;

.field private JQ:Landroid/widget/Button;

.field private JR:Landroid/widget/Button;

.field private JS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

.field private JT:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JJ:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic a([FF)V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JL:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, p1, v2

    .line 199
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 198
    const p1, 0x7f100176

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(ILjava/util/List;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JF:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JF:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JO:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->setGpsSatellites(Ljava/util/List;)V

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->notifyDataSetChanged()V

    .line 187
    :cond_1
    return-void
.end method

.method private synthetic c([F)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JK:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, p1, v2

    .line 193
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    .line 192
    const p1, 0x7f10016b

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$MG2DuKjvO3j-o6JYxdJQO6cjXz4(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->b(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$fPmGy7-E_G5lSbHgSCeLC6FmeAU(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;[FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a([FF)V

    return-void
.end method

.method public static synthetic lambda$uXWW9FErZCpUTUPyId_Jd98DxBY(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->c([F)V

    return-void
.end method

.method public static synthetic lambda$zU8DGs4G46T0-TkYILhw1HkfQho(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->s(II)V

    return-void
.end method

.method private synthetic s(II)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JM:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f10016d

    goto :goto_0

    .line 206
    :cond_0
    const p1, 0x7f10016c

    .line 205
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    packed-switch p2, :pswitch_data_0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f1002d0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 221
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f100174

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 222
    goto :goto_1

    .line 218
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f100170

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    goto :goto_1

    .line 215
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f100181

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    goto :goto_1

    .line 212
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f100180

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 213
    goto :goto_1

    .line 209
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    const p2, 0x7f100188

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 210
    nop

    .line 227
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$MG2DuKjvO3j-o6JYxdJQO6cjXz4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$MG2DuKjvO3j-o6JYxdJQO6cjXz4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;ILjava/util/List;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public a([FJ)V
    .locals 0

    .line 192
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$uXWW9FErZCpUTUPyId_Jd98DxBY;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$uXWW9FErZCpUTUPyId_Jd98DxBY;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;[F)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public a([FJF)V
    .locals 0

    .line 198
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$fPmGy7-E_G5lSbHgSCeLC6FmeAU;

    invoke-direct {p2, p0, p1, p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$fPmGy7-E_G5lSbHgSCeLC6FmeAU;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;[FF)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public bZ(Ljava/lang/String;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public fd()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 50
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    .line 52
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

    .line 53
    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->setTarget(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public fe()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 59
    const v0, 0x7f09033a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JI:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f09033b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JF:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JJ:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0901e0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JK:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JL:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JM:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JN:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JO:Landroid/widget/ListView;

    .line 67
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JP:Landroid/widget/Button;

    .line 68
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JQ:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JR:Landroid/widget/Button;

    .line 70
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JT:Landroid/view/ViewGroup;

    .line 71
    return-void
.end method

.method public ff()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gA()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gC()V

    .line 114
    return-void
.end method

.method public iV()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JI:Landroid/widget/TextView;

    const v1, 0x7f100172

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 164
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->theme:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->setTheme(I)V

    .line 77
    const-string v0, "SUPPORT_GPS_IMU_SYSST"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JT:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JO:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gz()Z

    move-result v0

    const v1, 0x7f10017d

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JI:Landroid/widget/TextView;

    const v2, 0x7f100173

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "\u672a\u627e\u5230GPS\u8bbe\u5907"

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JI:Landroid/widget/TextView;

    const v2, 0x7f100172

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->a(Landroid/location/Location;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gv()V

    .line 93
    :goto_0
    return-void
.end method

.method public mt()V
    .locals 3

    .line 136
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 139
    return-void
.end method

.method public mu()V
    .locals 3

    .line 143
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 146
    return-void
.end method

.method public mv()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 151
    return-void
.end method

.method public o(II)V
    .locals 1

    .line 204
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$zU8DGs4G46T0-TkYILhw1HkfQho;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/-$$Lambda$GPSTestActivity$zU8DGs4G46T0-TkYILhw1HkfQho;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;II)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900e0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090148

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->setGpsReset(I)V

    .line 125
    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->setGpsReset(I)V

    .line 122
    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->setGpsReset(I)V

    .line 128
    nop

    .line 132
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gB()V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->gx()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->JH:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;->a(Landroid/location/Location;)V

    .line 100
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    const-string v0, "gps diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method
