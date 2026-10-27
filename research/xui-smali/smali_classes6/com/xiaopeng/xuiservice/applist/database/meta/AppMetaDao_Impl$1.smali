.class Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppMetaDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 4
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 35
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 41
    const/4 v0, 0x3

    iget v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 43
    iget-boolean v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 44
    .local v0, "_tmp":I
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 45
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 46
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    :goto_1
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    const/4 v2, 0x6

    if-nez v1, :cond_2

    .line 51
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 53
    :cond_2
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_2
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    const/4 v2, 0x7

    if-nez v1, :cond_3

    .line 56
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 58
    :cond_3
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    :goto_3
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    const/16 v2, 0x8

    if-nez v1, :cond_4

    .line 61
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 63
    :cond_4
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :goto_4
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    const/16 v2, 0x9

    if-nez v1, :cond_5

    .line 66
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 68
    :cond_5
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 70
    :goto_5
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    const/16 v2, 0xa

    if-nez v1, :cond_6

    .line 71
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 73
    :cond_6
    iget-object v1, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "INSERT OR REPLACE INTO `applist_meta`(`appId`,`category`,`status`,`isFirstLaunch`,`pkgName`,`title`,`dayIconPath`,`storeNightIconPath`,`dockerIconPath`,`extra`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
