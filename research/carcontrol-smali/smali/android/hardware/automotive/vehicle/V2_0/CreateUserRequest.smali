.class public final Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;
.super Ljava/lang/Object;
.source "CreateUserRequest.java"


# instance fields
.field public newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

.field public newUserName:Ljava/lang/String;

.field public requestId:I

.field public usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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
            "Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;",
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

    mul-int/lit8 v3, v2, 0x40

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
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    .line 92
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;",
            ">;)V"
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 125
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 126
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 127
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 129
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 131
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 134
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

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;

    if-eq v2, v3, :cond_2

    return v1

    .line 33
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;

    .line 34
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 40
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 43
    :cond_5
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    .line 102
    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    .line 103
    iget-object v3, v0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v3, p1, v10, v4, v5}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x10

    add-long v3, p3, v3

    .line 104
    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    .line 107
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    add-long v11, v3, v1

    const/4 v13, 0x0

    move-object v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v11

    move v8, v13

    .line 106
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 111
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .newUserInfo = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .newUserName = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .usersInfo = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 139
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->requestId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserInfo:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 141
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->newUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    const-wide/16 v1, 0x20

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 115
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/CreateUserRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
