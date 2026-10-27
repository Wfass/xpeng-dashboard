.class Lcom/lzy/okgo/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_CACHE_NAME:Ljava/lang/String; = "okgo.db"

.field private static final DB_CACHE_VERSION:I = 0x1

.field static final TABLE_CACHE:Ljava/lang/String; = "cache"

.field static final TABLE_COOKIE:Ljava/lang/String; = "cookie"

.field static final TABLE_DOWNLOAD:Ljava/lang/String; = "download"

.field static final TABLE_UPLOAD:Ljava/lang/String; = "upload"

.field static final lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lzy/okgo/db/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const-string v0, "okgo.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    new-instance v0, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cache"

    invoke-direct {v0, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 51
    new-instance v0, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cookie"

    invoke-direct {v0, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 52
    new-instance v0, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "download"

    invoke-direct {v0, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 53
    new-instance v0, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "upload"

    invoke-direct {v0, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 62
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "key"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4, v1, v1}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "localExpire"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "head"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "data"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 67
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "host"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "name"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "domain"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "cookie"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "host"

    const-string v4, "name"

    const-string v5, "domain"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>([Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 73
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "tag"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4, v1, v1}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "url"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "folder"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "filePath"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "fileName"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "fraction"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "totalSize"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "currentSize"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "status"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "priority"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "date"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "request"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "extra1"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "extra2"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "extra3"

    const-string v4, "BLOB"

    invoke-direct {v2, v3, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 89
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "tag"

    const-string v4, "VARCHAR"

    invoke-direct {v2, v3, v4, v1, v1}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "url"

    const-string v3, "VARCHAR"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "folder"

    const-string v3, "VARCHAR"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "filePath"

    const-string v3, "VARCHAR"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "fileName"

    const-string v3, "VARCHAR"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "fraction"

    const-string v3, "VARCHAR"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "totalSize"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "currentSize"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "status"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "priority"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "date"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "request"

    const-string v3, "BLOB"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "extra1"

    const-string v3, "BLOB"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "extra2"

    const-string v3, "BLOB"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v0

    new-instance v1, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v2, "extra3"

    const-string v3, "BLOB"

    invoke-direct {v1, v2, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/db/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 126
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 116
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, v0}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, v0}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, v0}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, v0}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    return-void
.end method
