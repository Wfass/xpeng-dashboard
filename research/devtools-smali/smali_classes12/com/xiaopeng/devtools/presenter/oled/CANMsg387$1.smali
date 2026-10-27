.class Lcom/xiaopeng/devtools/presenter/oled/CANMsg387$1;
.super Ljava/lang/Object;
.source "CANMsg387.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aB(Landroid/os/Parcel;)Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;
    .locals 1

    .line 146
    new-instance v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387$1;->aB(Landroid/os/Parcel;)Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    move-result-object p1

    return-object p1
.end method

.method public cu(I)[Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;
    .locals 0

    .line 151
    new-array p1, p1, [Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387$1;->cu(I)[Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    move-result-object p1

    return-object p1
.end method
