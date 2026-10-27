.class public final Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;
.super Ljava/lang/Object;
.source "UsersInfo.java"


# instance fields
.field public currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

.field public existingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public numberUsers:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 73
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 78
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 77
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 83
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 84
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 122
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 126
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 128
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 31
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    .line 32
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 35
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    if-eq v2, v3, :cond_4

    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 47
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    .line 49
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v1, p2

    .line 94
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, p1, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x8

    add-long v7, p3, v5

    .line 95
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    const-wide/16 v7, 0x10

    add-long v7, p3, v7

    add-long/2addr v5, v7

    .line 97
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x8

    int-to-long v5, v2

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long/2addr v7, v3

    const/4 v13, 0x1

    move-object v1, p1

    move-wide v2, v5

    move-wide v4, v11

    move-wide v6, v7

    move v8, v13

    .line 98
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 102
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    .line 104
    new-instance v3, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v3}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x8

    int-to-long v4, v4

    .line 105
    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 106
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x20

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".currentUser = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .numberUsers = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .existingUsers = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    .line 136
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->currentUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    .line 137
    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->numberUsers:I

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v5, 0x10

    add-long/2addr p2, v5

    add-long/2addr v3, p2

    .line 140
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 141
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v0, :cond_0

    .line 144
    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->existingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    mul-int/lit8 v6, v5, 0x8

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v1

    .line 146
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
