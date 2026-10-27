.class public final Lcom/xiaopeng/aicabin/AParceledListSlice$b;
.super Ljava/lang/Object;
.source "AParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/AParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/xiaopeng/aicabin/AParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/AParceledListSlice;

    const-class v1, Lcom/xiaopeng/aicabin/AParceledListSlice$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/aicabin/AParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/xiaopeng/aicabin/AParceledListSlice$a;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/xiaopeng/aicabin/AParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaopeng/aicabin/AParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/xiaopeng/aicabin/AParceledListSlice$a;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/xiaopeng/aicabin/AParceledListSlice;

    return-object p1
.end method
