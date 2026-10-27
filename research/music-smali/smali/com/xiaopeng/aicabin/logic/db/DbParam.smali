.class public Lcom/xiaopeng/aicabin/logic/db/DbParam;
.super Ljava/lang/Object;
.source "DbParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/aicabin/DataReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY:I = 0x0

.field public static final RAW_QUERY:I = 0x1


# instance fields
.field public columns:[Ljava/lang/String;

.field public distinct:Z

.field public groupBy:Ljava/lang/String;

.field public having:Ljava/lang/String;

.field public limit:Ljava/lang/String;

.field public orderBy:Ljava/lang/String;

.field public queryType:I

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public sql:Ljava/lang/String;

.field public table:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/logic/db/DbParam$a;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/logic/db/DbParam$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->distinct:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->groupBy:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->having:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->orderBy:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->limit:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->sql:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/aicabin/logic/db/DbParam$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaopeng/aicabin/logic/db/DbParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->sql:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    .line 139
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->distinct:Z

    .line 140
    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    .line 144
    iput-object p6, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->groupBy:Ljava/lang/String;

    .line 145
    iput-object p7, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->having:Ljava/lang/String;

    .line 146
    iput-object p8, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->orderBy:Ljava/lang/String;

    .line 147
    iput-object p9, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->limit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->distinct:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->groupBy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->having:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->orderBy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->limit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->sql:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
