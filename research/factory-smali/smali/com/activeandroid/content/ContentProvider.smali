.class public Lcom/activeandroid/content/ContentProvider;
.super Landroid/content/ContentProvider;
.source "ContentProvider.java"


# static fields
.field private static final TYPE_CODES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sAuthority:Ljava/lang/String;

.field private static sMimeTypeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/activeandroid/content/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/activeandroid/content/ContentProvider;->TYPE_CODES:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/activeandroid/content/ContentProvider;->sMimeTypeCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 150
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "uri":Ljava/lang/StringBuilder;
    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v1, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getModelType(Landroid/net/Uri;)Ljava/lang/Class;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/activeandroid/content/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 182
    .local v0, "code":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 183
    sget-object v1, Lcom/activeandroid/content/ContentProvider;->TYPE_CODES:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 190
    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 191
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->getModelType(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "count":I
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 125
    return v1
.end method

.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfiguration()Lcom/activeandroid/Configuration;
    .locals 2

    .line 173
    new-instance v0, Lcom/activeandroid/Configuration$Builder;

    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/activeandroid/Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/activeandroid/Configuration$Builder;->create()Lcom/activeandroid/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/activeandroid/content/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 65
    .local v0, "match":I
    sget-object v1, Lcom/activeandroid/content/ContentProvider;->sMimeTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "cachedMimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 67
    return-object v1

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->getModelType(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 73
    .local v3, "single":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v4, "mimeType":Ljava/lang/StringBuilder;
    const-string v5, "vnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v5, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    if-eqz v3, :cond_2

    const-string v5, "item"

    goto :goto_1

    :cond_2
    const-string v5, "dir"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v5, "vnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget-object v5, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v5, Lcom/activeandroid/content/ContentProvider;->sMimeTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 95
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->getModelType(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 98
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 99
    invoke-static {v0, v1}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    .local v2, "retUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/activeandroid/content/ContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 102
    return-object v2

    .line 105
    .end local v2    # "retUri":Landroid/net/Uri;
    :cond_0
    return-object v3
.end method

.method public onCreate()Z
    .locals 10

    .line 39
    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getConfiguration()Lcom/activeandroid/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;)V

    .line 40
    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/activeandroid/Cache;->getTableInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v0, "tableInfos":Ljava/util/List;, "Ljava/util/List<Lcom/activeandroid/TableInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/activeandroid/TableInfo;

    .line 46
    .local v4, "tableInfo":Lcom/activeandroid/TableInfo;
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    .line 47
    .local v5, "tableKey":I
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    .line 50
    .local v3, "itemKey":I
    sget-object v6, Lcom/activeandroid/content/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v7, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v6, Lcom/activeandroid/content/ContentProvider;->TYPE_CODES:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v6, Lcom/activeandroid/content/ContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v7, Lcom/activeandroid/content/ContentProvider;->sAuthority:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v6, Lcom/activeandroid/content/ContentProvider;->TYPE_CODES:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .end local v3    # "itemKey":I
    .end local v4    # "tableInfo":Lcom/activeandroid/TableInfo;
    .end local v5    # "tableKey":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_0
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->getModelType(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 132
    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/activeandroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 142
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->getModelType(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "count":I
    invoke-direct {p0, p1}, Lcom/activeandroid/content/ContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 115
    return v1
.end method
