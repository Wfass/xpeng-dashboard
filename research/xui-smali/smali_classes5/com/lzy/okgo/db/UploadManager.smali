.class public Lcom/lzy/okgo/db/UploadManager;
.super Lcom/lzy/okgo/db/BaseDao;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/db/UploadManager$UploadManagerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/db/BaseDao<",
        "Lcom/lzy/okgo/model/Progress;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/lzy/okgo/db/DBHelper;

    invoke-direct {v0}, Lcom/lzy/okgo/db/DBHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/db/UploadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lzy/okgo/db/UploadManager$1;

    .line 34
    invoke-direct {p0}, Lcom/lzy/okgo/db/UploadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lzy/okgo/db/UploadManager;
    .locals 1

    .line 41
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager$UploadManagerHolder;->access$000()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/lzy/okgo/db/UploadManager;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 74
    const-string v0, "tag=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/db/UploadManager;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 75
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 69
    const-string v0, "tag=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/db/UploadManager;->queryOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/model/Progress;

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/Progress;",
            ">;"
        }
    .end annotation

    .line 89
    const-string v6, "date ASC"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/db/UploadManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 55
    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 34
    check-cast p1, Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/UploadManager;->getContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getFinished()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/Progress;",
            ">;"
        }
    .end annotation

    .line 94
    const-string v2, "status=?"

    const-string v0, "5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "date ASC"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/db/UploadManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "upload"

    return-object v0
.end method

.method public getUploading()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/Progress;",
            ">;"
        }
    .end annotation

    .line 99
    const-string v2, "status not in(?)"

    const-string v0, "5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "date ASC"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/db/UploadManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 50
    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/UploadManager;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;

    move-result-object p1

    return-object p1
.end method

.method public unInit()V
    .locals 0

    .line 65
    return-void
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 3
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "tag"    # Ljava/lang/String;

    .line 84
    const-string v0, "tag=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/lzy/okgo/db/UploadManager;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/lzy/okgo/model/Progress;)Z
    .locals 4
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 79
    const-string v0, "tag=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/lzy/okgo/db/UploadManager;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
