.class Lcom/xiaopeng/xuimanager/nova/NovaResource$1;
.super Ljava/lang/Object;
.source "NovaResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/nova/NovaResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 1

    .line 209
    new-instance v0, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaResource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaResource$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/nova/NovaResource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 0

    .line 214
    new-array p1, p1, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaResource$1;->newArray(I)[Lcom/xiaopeng/xuimanager/nova/NovaResource;

    move-result-object p1

    return-object p1
.end method
