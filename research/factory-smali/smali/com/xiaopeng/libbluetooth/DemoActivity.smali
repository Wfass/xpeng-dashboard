.class public Lcom/xiaopeng/libbluetooth/DemoActivity;
.super Landroid/app/Activity;
.source "DemoActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field address:[Ljava/lang/String;

.field private bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

.field cod:[I

.field private controlBox:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

.field private controlCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

.field count:[I

.field name:[Ljava/lang/String;

.field private phoneControlBox:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

.field private phoneControlCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->name:[Ljava/lang/String;

    .line 18
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->cod:[I

    .line 19
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->count:[I

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->address:[Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/DemoActivity$1;-><init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    .line 43
    new-instance v0, Lcom/xiaopeng/libbluetooth/DemoActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/DemoActivity$2;-><init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/DemoActivity;

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlBox:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/PhoneControlBox;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/DemoActivity;

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlBox:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/xiaopeng/libbluetooth/R$layout;->activity_demo_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->setContentView(I)V

    .line 63
    sget-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate_before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getInstance()Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getGeneralControlBox(Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlBox:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlBox:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->registerCallback(Lcom/xiaopeng/libbluetooth/AbsControlBox;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getPhoneControlBox(Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;)Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlBox:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->bluetoothBoxes:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlBox:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->registerCallback(Lcom/xiaopeng/libbluetooth/AbsControlBox;)V

    .line 69
    sget-object v0, Lcom/xiaopeng/libbluetooth/DemoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate_after"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getInstance()Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->controlBox:Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->releaseGeneralControlBox(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getInstance()Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity;->phoneControlBox:Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->releasePhoneControlBox(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)V

    .line 77
    return-void
.end method
