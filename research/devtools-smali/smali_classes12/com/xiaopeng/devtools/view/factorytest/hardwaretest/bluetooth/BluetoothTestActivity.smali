.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "BluetoothTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;


# instance fields
.field private IB:Landroid/view/View;

.field private IC:Z

.field private IE:I

.field private IF:I

.field private IG:I

.field private IH:I

.field private Im:Landroid/widget/Switch;

.field private In:Landroid/widget/Button;

.field private Io:Landroid/widget/Button;

.field private Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

.field private Iq:Landroid/widget/TextView;

.field private Ir:Landroid/widget/TextView;

.field private Is:Landroid/widget/TextView;

.field private It:Landroid/widget/TextView;

.field private Iu:Landroid/widget/TextView;

.field private Iv:Landroid/widget/TextView;

.field private Iw:Landroid/widget/TextView;

.field private Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

.field private Iy:Landroid/widget/ListView;

.field private Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

.field private mHandler:Landroid/os/Handler;

.field private wH:Lcom/xiaopeng/devtools/model/c/a/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    .line 50
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IE:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IF:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IG:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IH:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    const p2, 0x7f100349

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 168
    :cond_0
    const p2, 0x7f100333

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060016

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    return-object p0
.end method

.method private gk()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/b;->deleteAll()V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/b;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setScanDeviceItem(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->gk()V

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mz()V

    .line 252
    return-void
.end method

.method private mA()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->gj()Ljava/lang/String;

    move-result-object v0

    .line 273
    const v2, 0x7f1002da

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f10007d

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v5, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ir:Landroid/widget/TextView;

    invoke-direct {p0, v2, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ir:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 276
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iv:Landroid/widget/TextView;

    const v3, 0x7f10007c

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private mB()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iw:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IF:I

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 285
    const v2, 0x7f100237

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method private mD()V
    .locals 7

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dM()I

    move-result v0

    .line 352
    const-string v1, "BluetoothTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch bluetoothState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    .line 354
    move v3, v2

    goto :goto_0

    .line 353
    :cond_0
    nop

    .line 354
    move v3, v1

    :goto_0
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 355
    move v0, v2

    goto :goto_1

    .line 354
    :cond_1
    nop

    .line 355
    move v0, v1

    :goto_1
    const-string v4, "BluetoothTestActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSwitch isOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    const-string v4, "BluetoothTestActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSwitch isOff= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setChecked(Z)V

    .line 358
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 359
    return-void
.end method

.method private mz()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->startAnimation()V

    .line 257
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    return-void
.end method


# virtual methods
.method public as(Z)V
    .locals 0

    .line 267
    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->cU(I)V

    .line 268
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 327
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const p2, 0x7f100086

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 331
    goto :goto_0

    .line 333
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const p2, 0x7f100087

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 335
    goto :goto_0

    .line 337
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 342
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;III)V
    .locals 3

    .line 305
    const-string v0, "BluetoothTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectCallback, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", profileType = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 309
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const p2, 0x7f10007f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 315
    :cond_0
    if-nez p2, :cond_1

    .line 316
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 317
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 319
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bC(Ljava/lang/String;)V

    .line 323
    :cond_1
    :goto_0
    return-void
.end method

.method cU(I)V
    .locals 6

    .line 362
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 403
    const-string p1, "BluetoothTestActivity"

    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setChecked(Z)V

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0

    .line 386
    :pswitch_0
    const-string p1, "BluetoothTestActivity"

    const-string v0, "STATE_TURNING_OFF"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 388
    goto/16 :goto_0

    .line 369
    :pswitch_1
    const-string p1, "BluetoothTestActivity"

    const-string v3, "STATE_ON"

    invoke-static {p1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    if-eqz p1, :cond_0

    .line 371
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IE:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IE:I

    .line 372
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mB()V

    .line 374
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setChecked(Z)V

    .line 375
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 377
    const p1, 0x7f100084

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f100237

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IE:I

    .line 378
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IF:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x2

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IG:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iq:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 380
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iy:Landroid/widget/ListView;

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->d(Landroid/view/View;I)V

    .line 381
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IB:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->d(Landroid/view/View;I)V

    .line 382
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mA()V

    .line 383
    goto :goto_0

    .line 364
    :pswitch_2
    const-string p1, "BluetoothTestActivity"

    const-string v0, "STATE_TURNING_ON"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 366
    goto :goto_0

    .line 391
    :pswitch_3
    const-string p1, "BluetoothTestActivity"

    const-string v3, "STATE_OFF"

    invoke-static {p1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    if-eqz p1, :cond_1

    .line 393
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IG:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IG:I

    .line 394
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mB()V

    .line 396
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setChecked(Z)V

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    nop

    .line 407
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fd()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 55
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f090378

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    .line 57
    const v0, 0x7f0902ee

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iq:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0902e2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ir:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iv:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iw:Landroid/widget/TextView;

    .line 61
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-direct {v0, p0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    .line 62
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/b/b;->gm()Lcom/xiaopeng/devtools/model/c/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    .line 63
    const v0, 0x7f10031f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setTarget(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public fe()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 69
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->In:Landroid/widget/Button;

    .line 70
    const v0, 0x7f090320

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Io:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0902f6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Is:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0902ef

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->It:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iu:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iy:Landroid/widget/ListView;

    .line 75
    const v0, 0x7f0902c1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    .line 76
    const v0, 0x7f090238

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IB:Landroid/view/View;

    .line 77
    return-void
.end method

.method public ff()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iy:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->In:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Io:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 82
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    const v0, 0x7f090237

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const v0, 0x7f090236

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v0, 0x7f090329

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v0, 0x7f090324

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->onInit()V

    .line 90
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iy:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dK()V

    .line 93
    const-string v0, "BluetoothTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dM()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mB()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const v1, 0x7f10007f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->gl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mz()V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public mC()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->stopAnimation()V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->setVisibility(I)V

    .line 348
    return-void
.end method

.method public mt()V
    .locals 2

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 120
    return-void
.end method

.method public mu()V
    .locals 2

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 126
    return-void
.end method

.method public mv()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 195
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 199
    const-string p1, "BluetoothTestActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 201
    iget-boolean p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    if-eqz p2, :cond_0

    .line 202
    iget p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IF:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IF:I

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mB()V

    .line 205
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dK()V

    goto :goto_0

    .line 208
    :cond_1
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    .line 209
    iget-boolean p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IC:Z

    if-eqz p2, :cond_2

    .line 210
    iget p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IH:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IH:I

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mB()V

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dL()V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->deleteAll()V

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->setScanDeviceItem(Ljava/util/List;)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->stopAnimation()V

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->d(Landroid/view/View;I)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->IB:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->d(Landroid/view/View;I)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iy:Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->d(Landroid/view/View;I)V

    .line 222
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 229
    const v0, 0x7f09008b

    if-eq p1, v0, :cond_2

    const v0, 0x7f090320

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->gl()Z

    move-result p1

    if-nez p1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->gk()V

    goto :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;)V

    .line 240
    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mA()V

    .line 232
    nop

    .line 245
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->onDestroy()V

    .line 263
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 415
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->setVisibility(I)V

    .line 416
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;

    invoke-virtual {p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/CircularProgressView;->stopAnimation()V

    .line 417
    const p4, 0x7f090312

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 418
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p4, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->cV(I)Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    move-result-object p3

    .line 419
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    .line 420
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 421
    const-string p4, "BluetoothTestActivity"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hintText = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " address = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const p4, 0x7f090092

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const p4, 0x7f100087

    if-eqz p1, :cond_2

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1, p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->gl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;

    invoke-direct {p2, p0, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;)V

    goto/16 :goto_1

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bB(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_2
    const p1, 0x7f100086

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x1f4

    const p5, 0x7f100080

    if-eqz p1, :cond_3

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1, p5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$2;

    invoke-direct {p2, p0, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 450
    :cond_3
    const p1, 0x7f10007f

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, p5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0, p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 460
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bA(Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setAddress(Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 451
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    const p2, 0x7f100081

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setHintId(I)V

    .line 452
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 453
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    :cond_6
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 188
    const-string v0, "BluetoothTestActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onPause()V

    .line 190
    return-void
.end method

.method public onResult(Landroid/view/View;)V
    .locals 5

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 130
    const v0, 0x7f10007e

    const v1, 0x7f100085

    const v2, 0x7f100088

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 132
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v4, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Is:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 134
    goto :goto_0

    .line 137
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Is:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 139
    goto :goto_0

    .line 142
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v4, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->It:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 144
    goto :goto_0

    .line 147
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->It:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 149
    goto :goto_0

    .line 152
    :sswitch_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v4, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iu:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 154
    goto :goto_0

    .line 157
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Iu:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 161
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09017e -> :sswitch_5
        0x7f090180 -> :sswitch_4
        0x7f0902a7 -> :sswitch_3
        0x7f0902a8 -> :sswitch_2
        0x7f090324 -> :sswitch_1
        0x7f090329 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .line 175
    const-string v0, "BluetoothTestActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->mD()V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Im:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ip:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->dM()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->cU(I)V

    .line 180
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    const-string v0, "bt diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setScanDeviceItem(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 291
    const-string v0, "BluetoothTestActivity"

    const-string v1, "setScanDeviceItem"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->setScanDevices(Ljava/util/List;)V

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/BluetoothTestActivity;->Ix:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method
