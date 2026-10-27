.class public Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;
.super Ljava/lang/Object;
.source "SyncDataEntity.java"


# static fields
.field public static final COLUMN_NAME_APPID:Ljava/lang/String; = "appID"

.field public static final COLUMN_NAME_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_NAME_UID:Ljava/lang/String; = "uid"

.field public static final COLUMN_NAME_VALUE:Ljava/lang/String; = "value"


# instance fields
.field public appID:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public uid:J

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSyncData(Ljava/lang/String;JLcom/xiaopeng/xvs/tools/tranfer/SyncData;)Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;

    invoke-direct {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;-><init>()V

    .line 44
    iput-object p0, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    .line 45
    iput-wide p1, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->uid:J

    .line 46
    iget-object p0, p3, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;->key:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    .line 47
    iget-object p0, p3, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;->value:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static toSyncData(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;)Lcom/xiaopeng/xvs/tools/tranfer/SyncData;
    .locals 2

    .line 36
    new-instance v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;

    invoke-direct {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;->key:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncData;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncDataEntity{appID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
