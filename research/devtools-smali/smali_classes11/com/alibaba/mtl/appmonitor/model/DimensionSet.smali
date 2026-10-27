.class public Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
.super Ljava/lang/Object;
.source "DimensionSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/Dimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static F()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;-><init>()V

    return-object v0
.end method

.method static e(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 7

    .line 174
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->F()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 176
    :try_start_0
    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p0

    .line 177
    if-eqz p0, :cond_2

    .line 178
    iget-object v1, v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    .line 181
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 182
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    instance-of v3, v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    aget-object v4, p0, v2

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_1
    const-string v3, "DimensionSet"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "parcelables[i]:"

    aput-object v5, v4, v1

    aget-object v5, p0, v2

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_2
    goto :goto_2

    .line 189
    :catch_0
    move-exception p0

    .line 190
    const-string v1, "DimensionSet"

    const-string v2, "[readFromParcel]"

    invoke-static {v1, v2, p0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :goto_2
    return-object v0
.end method


# virtual methods
.method public b(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    return v0

    .line 71
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 135
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 138
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 161
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 162
    aget-object v3, v0, v2

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    aput-object v3, v1, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_1

    .line 167
    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :cond_1
    :goto_1
    return-void
.end method
