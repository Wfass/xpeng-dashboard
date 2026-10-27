.class Landroid/app/Notification$LiveItemAction$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$LiveItemAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/Notification$LiveItemAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$LiveItemAction;
    .locals 1

    .line 13238
    new-instance v0, Landroid/app/Notification$LiveItemAction;

    invoke-direct {v0, p1}, Landroid/app/Notification$LiveItemAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13235
    invoke-virtual {p0, p1}, Landroid/app/Notification$LiveItemAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$LiveItemAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/Notification$LiveItemAction;
    .locals 0

    .line 13243
    new-array p1, p1, [Landroid/app/Notification$LiveItemAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13235
    invoke-virtual {p0, p1}, Landroid/app/Notification$LiveItemAction$1;->newArray(I)[Landroid/app/Notification$LiveItemAction;

    move-result-object p1

    return-object p1
.end method
