.class public final Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;
.super Ljava/lang/Object;
.source "InitialUserInfoResponse.java"


# instance fields
.field public action:I

.field public requestId:I

.field public userLocales:Ljava/lang/String;

.field public userNameToCreate:Ljava/lang/String;

.field public userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

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
            "Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 97
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 96
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 102
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 103
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
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
            "Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 143
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 144
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 147
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 149
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
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

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;

    if-eq v2, v3, :cond_2

    return v1

    .line 38
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;

    .line 39
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 42
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    if-eq v2, v3, :cond_4

    return v1

    .line 45
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 48
    :cond_5
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 51
    :cond_6
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 62
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 113
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 114
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    .line 115
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v5, 0x8

    add-long v5, p3, v5

    move-object/from16 v15, p1

    invoke-virtual {v4, v15, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    .line 116
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 118
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    .line 123
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 125
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 87
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".requestId = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .action = "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponseAction;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .userToSwitchOrCreate = "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .userLocales = "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .userNameToCreate = "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 157
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->requestId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 158
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->action:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userToSwitchOrCreate:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 160
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userLocales:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    .line 161
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->userNameToCreate:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 133
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/InitialUserInfoResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
