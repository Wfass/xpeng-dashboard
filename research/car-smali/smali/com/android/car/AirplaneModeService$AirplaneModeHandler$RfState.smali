.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
.super Ljava/lang/Object;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfState"
.end annotation


# static fields
.field public static final RF_ID_BLUETOOTH:I = 0x1

.field public static final RF_ID_WIFI:I = 0x2

.field public static final RF_STATE_OFF:I = 0x2

.field public static final RF_STATE_ON:I = 0x1

.field public static final RF_STATE_UNKNOWN:I


# instance fields
.field private context:Landroid/content/Context;

.field private id:I

.field private name:Ljava/lang/String;

.field private volatile state:I

.field final synthetic this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;IILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .line 215
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->id:I

    .line 217
    iput p3, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->state:I

    .line 218
    iput-object p4, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->name:Ljava/lang/String;

    .line 219
    iput-object p5, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->context:Landroid/content/Context;

    .line 220
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRfState()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->state:I

    return v0
.end method

.method public getRfStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v0, "unknown"

    return-object v0

    .line 254
    :pswitch_0
    const-string v0, "off"

    return-object v0

    .line 252
    :pswitch_1
    const-string v0, "on"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .line 223
    return-void
.end method

.method public isOn()Z
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setRfState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 242
    iput p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->state:I

    .line 243
    return-void
.end method
