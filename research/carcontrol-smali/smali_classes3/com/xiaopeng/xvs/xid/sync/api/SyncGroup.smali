.class public Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;
.super Ljava/lang/Object;
.source "SyncGroup.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/ISerializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xvs/xid/base/ISerializable;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mIsDefault:Z

.field private mIsSelect:Z

.field private mStatus:I

.field private mUpdateTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    .line 19
    iput v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "id",
            "time"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    .line 19
    iput v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    .line 29
    iput-wide p3, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->getUpdateTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->getUpdateTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->compareTo(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;

    .line 96
    iget-boolean v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    iget-boolean v3, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    iget-boolean v3, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    iget v3, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    iget-wide v4, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    .line 101
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    return v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aDefault"
        }
    .end annotation

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "select"
        }
    .end annotation

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    return-void
.end method

.method public setUpdateTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 77
    iput-wide p1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Habit{mGroupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mGroupId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;->mUpdateTimestamp:J

    .line 117
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
