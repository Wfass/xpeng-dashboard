.class Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$3;->this$0:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    .line 61
    iget v0, p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceType:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "DELETE FROM `SelectedInfo` WHERE `resourceType` = ?"

    return-object v0
.end method
