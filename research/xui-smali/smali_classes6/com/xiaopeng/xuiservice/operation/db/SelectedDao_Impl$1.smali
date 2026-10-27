.class Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SelectedDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    .line 33
    iget v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceType:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 34
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "INSERT OR REPLACE INTO `SelectedInfo`(`resourceType`,`resourceId`) VALUES (?,?)"

    return-object v0
.end method
