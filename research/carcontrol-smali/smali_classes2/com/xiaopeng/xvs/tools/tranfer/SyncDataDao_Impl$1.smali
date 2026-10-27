.class Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SyncDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;)V
    .locals 3

    .line 34
    iget-object v0, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 39
    iget-wide v1, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->uid:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 40
    iget-object v0, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 41
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 48
    :cond_2
    iget-object p2, p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `sync_data`(`appID`,`uid`,`key`,`value`) VALUES (?,?,?,?)"

    return-object v0
.end method
