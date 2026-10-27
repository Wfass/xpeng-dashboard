.class public final Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;
.super Ljava/lang/Object;
.source "UserIdentificationResponse.java"


# instance fields
.field public associations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;",
            ">;"
        }
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;

.field public numberAssociation:I

.field public requestId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

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
            "Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 84
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 89
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 88
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 94
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 95
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 96
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
            "Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;",
            ">;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 140
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 141
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 144
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 146
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 149
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

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;

    .line 37
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 40
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    if-eq v2, v3, :cond_4

    return v1

    .line 43
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 46
    :cond_5
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 105
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 106
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 108
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 109
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 113
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 115
    new-instance v7, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;

    invoke-direct {v7}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;-><init>()V

    mul-int/lit8 v8, v6, 0x8

    int-to-long v8, v8

    move-object/from16 v10, p1

    .line 116
    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    .line 120
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    .line 123
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v11, v6

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v4, v2

    const/16 v17, 0x0

    .line 122
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x28

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 79
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".requestId = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numberAssociation = "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .associations = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .errorMessage = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 154
    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->requestId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 155
    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->numberAssociation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v3, v5

    .line 158
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, v5

    const/4 v7, 0x0

    .line 159
    invoke-virtual {p1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 160
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v7, v2, :cond_0

    .line 162
    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->associations:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;

    mul-int/lit8 v8, v7, 0x8

    int-to-long v8, v8

    invoke-virtual {v4, v3, v8, v9}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr v5, v0

    .line 164
    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x18

    add-long/2addr p2, v0

    .line 166
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 130
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
