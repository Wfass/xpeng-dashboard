.class Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$3;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 91
    iget v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 92
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :goto_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 103
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :goto_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 108
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 110
    :cond_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :goto_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 113
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 115
    :cond_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :goto_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 118
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 120
    :cond_5
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :goto_5
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 123
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 125
    :cond_6
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "UPDATE OR ABORT `app_info` SET `group_type` = ?,`biz_uk_name` = ?,`small_icon` = ?,`large_icon` = ?,`dock_icon` = ?,`small_night_icon` = ?,`config_url` = ? WHERE `biz_uk_name` = ?"

    return-object v0
.end method
