.class Lcom/xiaopeng/app/LiveItemAction$1;
.super Ljava/lang/Object;
.source "LiveItemAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/app/LiveItemAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/app/LiveItemAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/LiveItemAction;
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/app/LiveItemAction;

    invoke-direct {v0, p1}, Lcom/xiaopeng/app/LiveItemAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/LiveItemAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/LiveItemAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/app/LiveItemAction;
    .locals 0

    .line 59
    new-array p1, p1, [Lcom/xiaopeng/app/LiveItemAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/LiveItemAction$1;->newArray(I)[Lcom/xiaopeng/app/LiveItemAction;

    move-result-object p1

    return-object p1
.end method
