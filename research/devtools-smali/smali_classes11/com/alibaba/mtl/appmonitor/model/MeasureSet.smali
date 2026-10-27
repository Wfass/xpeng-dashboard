.class public Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
.super Ljava/lang/Object;
.source "MeasureSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private by:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static L()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 1

    .line 23
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;-><init>()V

    return-object v0
.end method

.method static k(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 4

    .line 170
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->L()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    .line 172
    :try_start_0
    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    .line 173
    nop

    .line 174
    if-eqz p0, :cond_1

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 177
    aget-object v3, p0, v2

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    goto :goto_1

    .line 181
    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    :goto_1
    return-object v0
.end method


# virtual methods
.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-object p0
.end method

.method public c(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 63
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 65
    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->o(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    return v0

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return v0

    .line 79
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 134
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->I()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->o(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v2

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->I()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->a(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 137
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public n(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 114
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    return-object v1

    .line 117
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->by:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 155
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 156
    aget-object v3, v0, v2

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    aput-object v3, v1, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_1
    :goto_1
    return-void
.end method
