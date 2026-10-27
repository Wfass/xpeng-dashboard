.class Lcom/xiaopeng/xuimanager/operation/OpenAction$1;
.super Ljava/lang/Object;
.source "OpenAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/OpenAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/xuimanager/operation/OpenAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/operation/OpenAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/OpenAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 0

    .line 66
    new-array p1, p1, [Lcom/xiaopeng/xuimanager/operation/OpenAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/OpenAction$1;->newArray(I)[Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p1

    return-object p1
.end method
