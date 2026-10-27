.class public Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;
.super Ljava/lang/Object;
.source "SyncGroupEventMsg.java"


# static fields
.field public static final TYPE_SYNC_ACCOUNT_CHANGE:Ljava/lang/String; = "TYPE_SYNC_ACCOUNT_CHANGE"

.field public static final TYPE_SYNC_GROUP_CREATED:Ljava/lang/String; = "TYPE_SYNC_GROUP_CREATED"

.field public static final TYPE_SYNC_GROUP_DELETED:Ljava/lang/String; = "TYPE_SYNC_GROUP_DELETED"

.field public static final TYPE_SYNC_GROUP_RENAMED_FAIL:Ljava/lang/String; = "TYPE_SYNC_GROUP_RENAMED_FAIL"

.field public static final TYPE_SYNC_GROUP_RENAMED_SUCCESS:Ljava/lang/String; = "TYPE_SYNC_GROUP_RENAMED_SUCCESS"

.field public static final TYPE_SYNC_GROUP_SELECTED:Ljava/lang/String; = "TYPE_SYNC_GROUP_SELECTED"


# instance fields
.field private index:I

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private uid:J

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->uid:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->value:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->isChecked:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 31
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->name:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 55
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->uid:J

    return-void
.end method

.method public setValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 47
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SyncGroupEventMsg{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "name=\'"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", index="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", isChecked="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->isChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", value="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", uid="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
