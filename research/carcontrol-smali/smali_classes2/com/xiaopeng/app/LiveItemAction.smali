.class public Lcom/xiaopeng/app/LiveItemAction;
.super Ljava/lang/Object;
.source "LiveItemAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/app/LiveItemAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionIntent:Landroid/app/PendingIntent;

.field private actionName:Ljava/lang/String;

.field private isClickHide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/app/LiveItemAction$1;

    invoke-direct {v0}, Lcom/xiaopeng/app/LiveItemAction$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/app/LiveItemAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/LiveItemAction;->actionName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/LiveItemAction;->isClickHide:I

    .line 24
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/xiaopeng/app/LiveItemAction;->actionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/app/LiveItemAction;->actionName:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/xiaopeng/app/LiveItemAction;->isClickHide:I

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/app/LiveItemAction;->actionIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/app/LiveItemAction;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/app/LiveItemAction;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public isClickHide()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/app/LiveItemAction;->isClickHide:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/app/LiveItemAction;->actionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/xiaopeng/app/LiveItemAction;->isClickHide:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/app/LiveItemAction;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
