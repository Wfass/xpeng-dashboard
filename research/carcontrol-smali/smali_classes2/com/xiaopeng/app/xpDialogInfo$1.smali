.class Lcom/xiaopeng/app/xpDialogInfo$1;
.super Ljava/lang/Object;
.source "xpDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/app/xpDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/app/xpDialogInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 2

    .line 190
    new-instance v0, Lcom/xiaopeng/app/xpDialogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/app/xpDialogInfo;-><init>(Landroid/os/Parcel;Lcom/xiaopeng/app/xpDialogInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/xpDialogInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/app/xpDialogInfo;
    .locals 0

    .line 194
    new-array p1, p1, [Lcom/xiaopeng/app/xpDialogInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/xpDialogInfo$1;->newArray(I)[Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object p1

    return-object p1
.end method
