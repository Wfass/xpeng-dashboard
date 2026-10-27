.class Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    .line 31
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 36
    :goto_0
    const/4 v0, 0x2

    iget-wide v1, p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->timestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 37
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "INSERT OR REPLACE INTO `ResourceAccountBinding`(`id`,`timestamp`) VALUES (?,?)"

    return-object v0
.end method
