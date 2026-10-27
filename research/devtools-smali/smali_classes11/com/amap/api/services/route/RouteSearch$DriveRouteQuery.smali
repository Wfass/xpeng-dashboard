.class public Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriveRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private by:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1138
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 1116
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1118
    if-nez v0, :cond_0

    .line 1119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    goto :goto_0

    .line 1121
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    .line 1123
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1124
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    sget-object v3, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1126
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 1127
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 940
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 941
    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 942
    iput-object p4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    .line 943
    iput-object p5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 944
    return-void
.end method


# virtual methods
.method public bO()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
    .locals 9

    .line 1214
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    const-string v1, "RouteSearch"

    const-string v2, "DriveRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    iget-object v4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget-object v6, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object v7, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    iget-object v8, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->bO()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1177
    return v0

    .line 1178
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1179
    return v1

    .line 1180
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1181
    return v1

    .line 1182
    :cond_2
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 1183
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1184
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1185
    return v1

    .line 1186
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1187
    return v1

    .line 1188
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    if-nez v2, :cond_5

    .line 1189
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 1190
    return v1

    .line 1191
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1192
    return v1

    .line 1193
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_7

    .line 1194
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v2, :cond_8

    .line 1195
    return v1

    .line 1196
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1197
    return v1

    .line 1198
    :cond_8
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    if-eq v2, v3, :cond_9

    .line 1199
    return v1

    .line 1200
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-nez v2, :cond_a

    .line 1201
    iget-object p1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 1202
    return v1

    .line 1203
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1204
    return v1

    .line 1205
    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1156
    nop

    .line 1157
    nop

    .line 1158
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 1159
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 1160
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 1161
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    add-int/2addr v0, v3

    .line 1162
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    .line 1163
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hn:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1095
    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1097
    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    if-nez p2, :cond_0

    .line 1098
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1100
    :cond_0
    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->by:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1102
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1103
    goto :goto_0

    .line 1105
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1106
    return-void
.end method
