.class public Lcom/xiaopeng/xuimanager/operation/OpenAction;
.super Ljava/lang/Object;
.source "OpenAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/operation/OpenAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN_ACTION_SEND_BROADCAST:I = 0x2

.field public static final OPEN_ACTION_START_ACTIVITY:I = 0x0

.field public static final OPEN_ACTION_START_SERVICE:I = 0x1


# instance fields
.field public openActionComponent:Ljava/lang/String;

.field public openActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OpenAction$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/operation/OpenAction$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    return-void
.end method

.method public static activity(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static broadcast(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static service(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenAction{openActionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openActionComponent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget p2, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
