.class Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 35
    iget v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 49
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :goto_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 54
    :cond_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :goto_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 59
    :cond_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 64
    :cond_5
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_5
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "INSERT OR REPLACE INTO `app_info`(`group_type`,`biz_uk_name`,`small_icon`,`large_icon`,`dock_icon`,`small_night_icon`,`config_url`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method
