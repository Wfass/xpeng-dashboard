.class public Lcom/android/car/BluetoothAutoConnectStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BluetoothAutoConnectStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;,
        Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;
    }
.end annotation


# static fields
.field public static final CHECK_CLIENT_PROFILES:I = 0x3ee

.field public static final CONNECT:I = 0x65

.field public static final CONNECTION_TIMEOUT_MS:I = 0x1f40

.field static final CONNECT_MORE_PROFILES_TIMEOUT_MS:I = 0x7d0

.field public static final CONNECT_TIMEOUT:I = 0x67

.field private static final DBG:Z

.field public static final DEVICE_CONNECTED:I = 0x68

.field public static final DEVICE_DISCONNECTED:I = 0x69

.field public static final DISCONNECT:I = 0x66

.field private static final TAG:Ljava/lang/String; = "BTAutoConnStateMachine"


# instance fields
.field private final mIdle:Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

.field private final mPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

.field private final mProcessing:Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/car/Utils;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothAutoConnectStateMachine;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 60
    const-string v0, "BTAutoConnStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 66
    new-instance v0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;-><init>(Lcom/android/car/BluetoothAutoConnectStateMachine;Lcom/android/car/BluetoothAutoConnectStateMachine$1;)V

    iput-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mIdle:Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    .line 67
    new-instance v0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;

    invoke-direct {v0, p0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;-><init>(Lcom/android/car/BluetoothAutoConnectStateMachine;Lcom/android/car/BluetoothAutoConnectStateMachine$1;)V

    iput-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mProcessing:Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;

    .line 69
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mIdle:Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    invoke-virtual {p0, v0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mProcessing:Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;

    invoke-virtual {p0, v0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 71
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mIdle:Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    invoke-virtual {p0, v0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 72
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/car/BluetoothAutoConnectStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/car/BluetoothAutoConnectStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;
    .param p1, "x1"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;

    .line 39
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;

    .line 39
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mProcessing:Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;

    .line 39
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine;->mIdle:Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/BluetoothAutoConnectStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;
    .param p1, "x1"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->removeMessages(I)V

    return-void
.end method

.method public static make(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Lcom/android/car/BluetoothAutoConnectStateMachine;
    .locals 1
    .param p0, "policy"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 75
    new-instance v0, Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-direct {v0, p0}, Lcom/android/car/BluetoothAutoConnectStateMachine;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 77
    .local v0, "mStateMachine":Lcom/android/car/BluetoothAutoConnectStateMachine;
    invoke-virtual {v0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->start()V

    .line 78
    return-object v0
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->quitNow()V

    .line 83
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return-void
.end method
