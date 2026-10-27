.class public final Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;
.super Ljava/lang/Object;
.source "UserIdentificationGetRequest.java"


# instance fields
.field public associationTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public numberAssociationTypes:I

.field public requestId:I

.field public userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

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
            "Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 81
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 86
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 85
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 91
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 92
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
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
            "Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;",
            ">;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 131
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 133
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 135
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 137
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
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

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;

    if-eq v2, v3, :cond_2

    return v1

    .line 33
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;

    .line 34
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 40
    :cond_4
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    if-eq v2, v3, :cond_5

    return v1

    .line 43
    :cond_5
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

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

    .line 51
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 102
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    .line 103
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v5, 0x4

    add-long v5, p3, v5

    move-object/from16 v7, p1

    invoke-virtual {v4, v7, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    .line 104
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    .line 106
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v8, v6, 0x4

    int-to-long v8, v8

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x1

    .line 107
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 111
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 114
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 115
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x20

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".requestId = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .userInfo = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .numberAssociationTypes = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .associationTypes = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 145
    iget v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->requestId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->userInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v3, 0x4

    add-long/2addr v3, p2

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xc

    add-long v4, p2, v2

    .line 147
    iget v6, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->numberAssociationTypes:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 149
    iget-object v4, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x10

    add-long/2addr p2, v5

    const-wide/16 v5, 0x8

    add-long/2addr v5, p2

    .line 150
    invoke-virtual {p1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v2, p2

    const/4 v5, 0x0

    .line 151
    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 152
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v4, :cond_0

    mul-int/lit8 v3, v5, 0x4

    int-to-long v6, v3

    .line 154
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->associationTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    .line 156
    invoke-virtual {p1, p2, p3, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationGetRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
