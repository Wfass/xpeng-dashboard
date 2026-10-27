.class public Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.super Ljava/lang/Object;
.source "MeasureValue.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/alibaba/mtl/appmonitor/c/b;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bA:Ljava/lang/Double;

.field private bz:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static N()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 3

    .line 49
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method static m(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 6

    .line 139
    nop

    .line 141
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 144
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->N()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    iput-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z

    .line 146
    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    .line 147
    iput-wide v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    :catch_1
    move-exception p0

    .line 149
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    move-object p0, v0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public O()Ljava/lang/Double;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    return-object v0
.end method

.method public P()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z

    return v0
.end method

.method public Q()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    return-wide v0
.end method

.method public varargs declared-synchronized a([Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    .line 110
    if-nez p1, :cond_0

    .line 111
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 114
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 116
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 117
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    .line 118
    iput-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_2
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(D)V
    .locals 0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    .line 74
    return-void
.end method

.method public declared-synchronized b(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V
    .locals 4

    monitor-enter p0

    .line 87
    if-nez p1, :cond_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->Q()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->O()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 93
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->O()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_2
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 97
    :catch_0
    move-exception p1

    .line 99
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public c(D)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 82
    return-void
.end method

.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    .line 103
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public g(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 131
    :try_start_0
    iget-boolean p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bz:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->bA:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 133
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 134
    :catch_0
    move-exception p1

    .line 137
    :goto_1
    return-void
.end method
