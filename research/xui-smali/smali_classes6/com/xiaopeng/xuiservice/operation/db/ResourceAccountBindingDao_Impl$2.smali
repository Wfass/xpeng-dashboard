.class Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ResourceAccountBindingDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$2;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .locals 2
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    .line 47
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "DELETE FROM `ResourceAccountBinding` WHERE `id` = ?"

    return-object v0
.end method
