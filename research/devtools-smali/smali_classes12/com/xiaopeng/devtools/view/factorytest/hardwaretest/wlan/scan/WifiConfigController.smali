.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private NA:Z

.field private NB:Landroid/widget/TextView;

.field private NC:I

.field private ND:Landroid/widget/TextView;

.field private NE:Ljava/lang/String;

.field private final NF:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final NG:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private NH:Landroid/widget/Spinner;

.field private NI:Landroid/widget/Spinner;

.field private NJ:Landroid/widget/Spinner;

.field private NK:Landroid/widget/Spinner;

.field private NM:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private NN:Landroid/widget/Spinner;

.field private NP:Landroid/widget/TextView;

.field private NQ:Landroid/widget/TextView;

.field private NR:Landroid/widget/Spinner;

.field private NS:Landroid/widget/TextView;

.field private NT:Landroid/widget/TextView;

.field private NU:Landroid/widget/TextView;

.field private NV:Landroid/widget/TextView;

.field private NW:Landroid/widget/TextView;

.field private NX:Landroid/widget/Spinner;

.field private NY:Landroid/widget/TextView;

.field private NZ:Landroid/widget/TextView;

.field private final Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

.field private final Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

.field private Oa:Landroid/widget/TextView;

.field private final Ob:Landroid/os/Handler;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;Landroid/view/View;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V
    .locals 6

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NE:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    .line 131
    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    .line 132
    iput-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 133
    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 134
    move p2, p1

    goto :goto_0

    :cond_0
    iget p2, p3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    :goto_0
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    .line 135
    iput-boolean p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NA:Z

    .line 137
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ob:Landroid/os/Handler;

    .line 138
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 141
    new-instance p4, Landroid/widget/ArrayAdapter;

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x1090008

    invoke-direct {p4, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NF:Landroid/widget/ArrayAdapter;

    .line 144
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NF:Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    invoke-virtual {p4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 146
    new-instance p4, Landroid/widget/ArrayAdapter;

    .line 148
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, p2, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NG:Landroid/widget/ArrayAdapter;

    .line 149
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NG:Landroid/widget/ArrayAdapter;

    invoke-virtual {p4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 151
    const p4, 0x7f1004af

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NE:Ljava/lang/String;

    .line 152
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f09020e

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NR:Landroid/widget/Spinner;

    .line 153
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NR:Landroid/widget/Spinner;

    invoke-virtual {p4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0902c9

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NX:Landroid/widget/Spinner;

    .line 155
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NX:Landroid/widget/Spinner;

    invoke-virtual {p4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const v0, 0x7f10048d

    if-nez p4, :cond_1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    const p3, 0x7f10045e

    invoke-interface {p1, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->dq(I)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const p3, 0x7f090362

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NB:Landroid/widget/TextView;

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NB:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const p3, 0x7f09032b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NH:Landroid/widget/Spinner;

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nk()V

    .line 166
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nl()V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->dp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    :cond_1
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget-object v1, v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p4, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->cS(Ljava/lang/String;)V

    .line 177
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f090208

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mW()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_2

    .line 181
    const v2, 0x7f1004ac

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/d;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getLevel()I

    move-result v2

    .line 185
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 186
    const v4, 0x7f030010

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 187
    const v4, 0x7f1004a7

    aget-object p3, p3, v2

    invoke-direct {p0, p4, v4, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 190
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mV()Landroid/net/wifi/WifiInfo;

    move-result-object p3

    .line 191
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 192
    const v4, 0x7f1004a8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "Mbps"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, v4, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 195
    :cond_4
    const p3, 0x7f100492

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->aA(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p3, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 197
    nop

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq p1, v3, :cond_5

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 219
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq p1, v3, :cond_6

    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NA:Z

    if-eqz p1, :cond_7

    .line 220
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ne()V

    .line 221
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nk()V

    .line 222
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nl()V

    .line 225
    :cond_7
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NA:Z

    if-eqz p1, :cond_8

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->dp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    :cond_8
    const-string p1, "wifiController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "state = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ",level = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    if-nez v1, :cond_9

    if-eq v2, v3, :cond_9

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    const p3, 0x7f100462

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->dp(Ljava/lang/String;)V

    .line 231
    const-string p1, "wifiController"

    const-string p3, "state == null && level != -1"

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const p3, 0x7f09020d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const-string p1, "wifiController"

    const-string p3, "! state == null && level != -1"

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq p1, v3, :cond_a

    .line 237
    const-string p1, "wifiController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "networkId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p4, p4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->nr()V

    .line 239
    if-eqz v1, :cond_a

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    const p3, 0x7f100479

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->dp(Ljava/lang/String;)V

    .line 248
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->ns()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nc()V

    .line 251
    :cond_b
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 255
    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    const v2, 0x7f090450

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .line 649
    if-eqz p2, :cond_1

    .line 651
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 652
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 655
    goto :goto_1

    .line 652
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 659
    :cond_1
    :goto_1
    return-void
.end method

.method private dn(I)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f09022b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f09022a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0902ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f09033d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->getContext()Landroid/content/Context;

    .line 531
    const v0, 0x7f090229

    const v2, 0x7f09022d

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 533
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nf()V

    .line 534
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ng()V

    .line 535
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ni()V

    .line 536
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nh()V

    .line 537
    goto :goto_0

    .line 556
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NG:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_0

    .line 557
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NG:Landroid/widget/ArrayAdapter;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    .line 558
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nh()V

    goto :goto_0

    .line 539
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f09022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nf()V

    .line 541
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ni()V

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nj()V

    .line 543
    goto :goto_0

    .line 546
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NF:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_1

    .line 547
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NF:Landroid/widget/ArrayAdapter;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    .line 548
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NM:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nh()V

    .line 553
    nop

    .line 565
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nd()Z
    .locals 1

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method private ne()V
    .locals 6

    .line 420
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    const/16 v1, 0x8

    const v2, 0x7f09032c

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0902ad

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f09033c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 430
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    const v4, 0x7f1004ae

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 437
    :cond_1
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    const/4 v4, 0x3

    const v5, 0x7f0901af

    if-eq v0, v4, :cond_2

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    return-void

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    if-nez v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NJ:Landroid/widget/Spinner;

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09044f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NN:Landroid/widget/Spinner;

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NP:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NQ:Landroid/widget/TextView;

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_5

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 458
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 459
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 460
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 461
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->dn(I)V

    .line 462
    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 464
    :cond_3
    if-eqz v3, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 475
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    goto :goto_0

    .line 472
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 473
    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 470
    goto :goto_0

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 467
    nop

    .line 483
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NJ:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    goto :goto_1

    .line 490
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 491
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->dn(I)V

    goto :goto_1

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->dn(I)V

    .line 496
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nf()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 570
    return-void
.end method

.method private ng()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NJ:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 575
    return-void
.end method

.method private nh()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NN:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 580
    return-void
.end method

.method private ni()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f090229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NQ:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method private nj()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f09033d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    return-void
.end method

.method private nk()V
    .locals 4

    .line 594
    nop

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NR:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f090366

    if-ne v0, v2, :cond_1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NS:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NS:Landroid/widget/TextView;

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NS:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NT:Landroid/widget/TextView;

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NT:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NU:Landroid/widget/TextView;

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NU:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NV:Landroid/widget/TextView;

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0901ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NW:Landroid/widget/TextView;

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NW:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :cond_2
    :goto_0
    return-void
.end method

.method private nl()V
    .locals 5

    .line 623
    nop

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NX:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    const v3, 0x7f0902c5

    const v4, 0x7f0902cc

    if-ne v0, v2, :cond_1

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NY:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NY:Landroid/widget/TextView;

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NY:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NZ:Landroid/widget/TextView;

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NZ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Oa:Landroid/widget/TextView;

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Oa:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 667
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ob:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 677
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NA:Z

    if-nez v0, :cond_0

    .line 294
    return-object v1

    .line 297
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 299
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 300
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NB:Landroid/widget/TextView;

    .line 301
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 303
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v3, v3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget-object v2, v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v2, v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 311
    :goto_0
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    const/16 v3, 0x22

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 399
    return-object v1

    .line 346
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 347
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 348
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 349
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 350
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NK:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 351
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 352
    if-eqz v1, :cond_3

    .line 374
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    .line 357
    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 368
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    goto :goto_1

    .line 365
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 366
    goto :goto_1

    .line 362
    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 363
    goto :goto_1

    .line 359
    :pswitch_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 360
    nop

    .line 377
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NJ:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, ""

    .line 379
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NN:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, ""

    .line 382
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 383
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NP:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 384
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NQ:Landroid/widget/TextView;

    .line 385
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 391
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 395
    :cond_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 397
    goto/16 :goto_4

    .line 334
    :pswitch_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 335
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 336
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 340
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 342
    :goto_2
    goto :goto_4

    .line 317
    :pswitch_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 318
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 319
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 320
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 321
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 322
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    const/16 v4, 0xa

    if-eq v1, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_8

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_9

    :cond_8
    const-string v1, "[0-9A-Fa-f]*"

    .line 325
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 326
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v5

    goto :goto_3

    .line 328
    :cond_9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 330
    :goto_3
    goto :goto_4

    .line 313
    :pswitch_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 314
    nop

    .line 403
    :cond_a
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public nc()V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Ny:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;->nt()Landroid/widget/Button;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 269
    :cond_0
    nop

    .line 270
    nop

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    .line 274
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_3

    .line 275
    :cond_2
    nop

    .line 278
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NB:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NB:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v4, v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 281
    :cond_6
    goto :goto_1

    .line 283
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nd()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 284
    nop

    .line 289
    move v3, v2

    goto :goto_1

    .line 286
    :cond_8
    nop

    .line 289
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    return-void
.end method

.method public nm()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NA:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 686
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f09033c

    if-ne p1, v0, :cond_1

    .line 687
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 689
    if-eqz p2, :cond_0

    .line 690
    const/16 p2, 0x90

    goto :goto_0

    .line 691
    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/2addr p2, v1

    .line 688
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 692
    if-ltz p1, :cond_1

    .line 693
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ND:Landroid/widget/TextView;

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 702
    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 706
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NH:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 707
    iput p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NC:I

    .line 708
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ne()V

    goto :goto_0

    .line 709
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NI:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    .line 710
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->ne()V

    goto :goto_0

    .line 711
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->NX:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    .line 712
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nl()V

    goto :goto_0

    .line 714
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nk()V

    .line 716
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nc()V

    .line 717
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 722
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 682
    return-void
.end method
