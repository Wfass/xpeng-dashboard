.class public Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;
.super Ljava/lang/Object;
.source "UniDialogConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isPositive:Z

.field public order:I

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->text:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 108
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget p2, p0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
