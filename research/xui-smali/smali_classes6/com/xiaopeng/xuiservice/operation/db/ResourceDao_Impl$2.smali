.class Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ResourceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$2;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 97
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "DELETE FROM `ResourceInfo` WHERE `resourceId` = ?"

    return-object v0
.end method
