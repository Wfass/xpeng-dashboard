.class Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothDevicesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDevicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfo"
.end annotation


# instance fields
.field private mDeviceAvailableToConnect:Z

.field private mDeviceIndex:I

.field private mNumActiveConnections:I

.field private mNumConnectionsSupported:I

.field private mProfile:I

.field private mRetryAttempt:I

.field final synthetic this$0:Lcom/android/car/BluetoothDevicesInfo;


# direct methods
.method public constructor <init>(Lcom/android/car/BluetoothDevicesInfo;I)V
    .locals 1
    .param p2, "profile"    # I

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;-><init>(Lcom/android/car/BluetoothDevicesInfo;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/android/car/BluetoothDevicesInfo;II)V
    .locals 0
    .param p2, "profile"    # I
    .param p3, "numConnectionsSupported"    # I

    .line 83
    iput-object p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->this$0:Lcom/android/car/BluetoothDevicesInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mProfile:I

    .line 85
    iput p3, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumConnectionsSupported:I

    .line 86
    invoke-direct {p0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->initConnectionInfo()V

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumConnectionsSupported:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumConnectionsSupported:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceIndex:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mProfile:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mRetryAttempt:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mRetryAttempt:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mRetryAttempt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mRetryAttempt:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 62
    iget-boolean v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceAvailableToConnect:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceAvailableToConnect:Z

    return p1
.end method

.method private initConnectionInfo()V
    .locals 1

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceAvailableToConnect:Z

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mDeviceIndex:I

    .line 92
    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mRetryAttempt:I

    .line 93
    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->mNumActiveConnections:I

    .line 94
    return-void
.end method
