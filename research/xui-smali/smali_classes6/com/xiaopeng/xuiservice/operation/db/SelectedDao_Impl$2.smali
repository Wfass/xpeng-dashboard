.class Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$2;
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
        "Lcom/xiaopeng/xuiservice/operation/db/SelectTime;",
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

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$2;->this$0:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectTime;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    .line 49
    iget v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->resourceType:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    iget-wide v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->lastSelectTime:J

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 51
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectTime;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "INSERT OR REPLACE INTO `SelectTime`(`resourceType`,`lastSelectTime`) VALUES (?,?)"

    return-object v0
.end method
