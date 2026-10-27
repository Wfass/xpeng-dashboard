.class public Lcom/alibaba/mtl/appmonitor/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/Transaction$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 2

    .line 128
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>()V

    .line 131
    :try_start_0
    const-class v1, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->a:Ljava/lang/Integer;

    .line 133
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->o:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->p:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->r:Ljava/lang/String;

    .line 136
    const-class v1, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->e:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->a:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 125
    return-void
.end method
