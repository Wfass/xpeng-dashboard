.class Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OperationKeyValueDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    .line 33
    iget-wide v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 34
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :goto_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 44
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 47
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :goto_2
    const/4 v0, 0x5

    iget v1, p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "INSERT OR ABORT INTO `OperationKeyValue`(`id`,`key`,`value`,`time`,`status`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
