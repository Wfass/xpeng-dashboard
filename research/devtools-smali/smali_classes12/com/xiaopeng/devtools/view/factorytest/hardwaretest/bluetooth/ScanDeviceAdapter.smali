.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScanDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;
    }
.end annotation


# instance fields
.field private Jg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private Jh:I

.field private mAddress:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public cV(I)Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    return-object p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 71
    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 72
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bb

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    const v1, 0x7f090311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 75
    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 76
    const v1, 0x7f090312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 77
    const v1, 0x7f090313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    move-object p2, v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f10015e

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f1002a1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    iget p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jh:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-object p2
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->mAddress:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setHintId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jh:I

    .line 43
    return-void
.end method

.method public setScanDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/ScanDeviceAdapter;->Jg:Ljava/util/List;

    .line 35
    return-void
.end method
