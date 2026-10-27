.class public final Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;
.super Ljava/lang/Object;
.source "SwitchUserRequest.java"


# instance fields
.field public messageType:I

.field public requestId:I

.field public targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

.field public usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 24
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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
            "Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 85
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 90
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 89
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 95
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 96
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
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
            "Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 123
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 125
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 127
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 129
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
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

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;

    if-eq v2, v3, :cond_2

    return v1

    .line 37
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;

    .line 38
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 41
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    if-eq v2, v3, :cond_4

    return v1

    .line 44
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 47
    :cond_5
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

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

    .line 55
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    .line 59
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    .line 108
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    const-wide/16 v1, 0x10

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 80
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".requestId = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .messageType = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserMessageType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .targetUser = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .usersInfo = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 137
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->requestId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 138
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->messageType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->targetUser:Landroid/hardware/automotive/vehicle/V2_0/UserInfo;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/UserInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->usersInfo:Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;

    const-wide/16 v1, 0x10

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/automotive/vehicle/V2_0/UsersInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 113
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/SwitchUserRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
