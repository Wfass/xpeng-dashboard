.class Lcom/lzy/okgo/d/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field static final lM:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private lW:Lcom/lzy/okgo/d/f;

.field private lX:Lcom/lzy/okgo/d/f;

.field private lY:Lcom/lzy/okgo/d/f;

.field private lZ:Lcom/lzy/okgo/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lzy/okgo/d/d;->lM:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/lzy/okgo/a;->cE()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/d/d;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 60
    const-string v0, "okgo.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    new-instance p1, Lcom/lzy/okgo/d/f;

    const-string v0, "cache"

    invoke-direct {p1, v0}, Lcom/lzy/okgo/d/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lzy/okgo/d/d;->lW:Lcom/lzy/okgo/d/f;

    .line 51
    new-instance p1, Lcom/lzy/okgo/d/f;

    const-string v0, "cookie"

    invoke-direct {p1, v0}, Lcom/lzy/okgo/d/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lzy/okgo/d/d;->lX:Lcom/lzy/okgo/d/f;

    .line 52
    new-instance p1, Lcom/lzy/okgo/d/f;

    const-string v0, "download"

    invoke-direct {p1, v0}, Lcom/lzy/okgo/d/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lzy/okgo/d/d;->lY:Lcom/lzy/okgo/d/f;

    .line 53
    new-instance p1, Lcom/lzy/okgo/d/f;

    const-string v0, "upload"

    invoke-direct {p1, v0}, Lcom/lzy/okgo/d/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lzy/okgo/d/d;->lZ:Lcom/lzy/okgo/d/f;

    .line 62
    iget-object p1, p0, Lcom/lzy/okgo/d/d;->lW:Lcom/lzy/okgo/d/f;

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "key"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "localExpire"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "head"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "data"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    .line 67
    iget-object p1, p0, Lcom/lzy/okgo/d/d;->lX:Lcom/lzy/okgo/d/f;

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "host"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "name"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "domain"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "cookie"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "host"

    const-string v3, "name"

    const-string v4, "domain"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzy/okgo/d/c;-><init>([Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    .line 73
    iget-object p1, p0, Lcom/lzy/okgo/d/d;->lY:Lcom/lzy/okgo/d/f;

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "tag"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "url"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "folder"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "filePath"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "fileName"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "fraction"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "totalSize"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "currentSize"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "status"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "priority"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "date"

    const-string v3, "INTEGER"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "request"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "extra1"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "extra2"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "extra3"

    const-string v3, "BLOB"

    invoke-direct {v0, v2, v3}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    .line 89
    iget-object p1, p0, Lcom/lzy/okgo/d/d;->lZ:Lcom/lzy/okgo/d/f;

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v2, "tag"

    const-string v3, "VARCHAR"

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "url"

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "folder"

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "filePath"

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "fileName"

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "fraction"

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "totalSize"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "currentSize"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "status"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "priority"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "date"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "request"

    const-string v2, "BLOB"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "extra1"

    const-string v2, "BLOB"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "extra2"

    const-string v2, "BLOB"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    move-result-object p1

    new-instance v0, Lcom/lzy/okgo/d/c;

    const-string v1, "extra3"

    const-string v2, "BLOB"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/d/f;->a(Lcom/lzy/okgo/d/c;)Lcom/lzy/okgo/d/f;

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lzy/okgo/d/d;->lW:Lcom/lzy/okgo/d/f;

    invoke-virtual {v0}, Lcom/lzy/okgo/d/f;->cX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lzy/okgo/d/d;->lX:Lcom/lzy/okgo/d/f;

    invoke-virtual {v0}, Lcom/lzy/okgo/d/f;->cX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lzy/okgo/d/d;->lY:Lcom/lzy/okgo/d/f;

    invoke-virtual {v0}, Lcom/lzy/okgo/d/f;->cX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/lzy/okgo/d/d;->lZ:Lcom/lzy/okgo/d/f;

    invoke-virtual {v0}, Lcom/lzy/okgo/d/f;->cX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/d/d;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 126
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 116
    iget-object p2, p0, Lcom/lzy/okgo/d/d;->lW:Lcom/lzy/okgo/d/f;

    invoke-static {p1, p2}, Lcom/lzy/okgo/d/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/d/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/lzy/okgo/d/d;->lX:Lcom/lzy/okgo/d/f;

    invoke-static {p1, p2}, Lcom/lzy/okgo/d/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/d/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object p2, p0, Lcom/lzy/okgo/d/d;->lY:Lcom/lzy/okgo/d/f;

    invoke-static {p1, p2}, Lcom/lzy/okgo/d/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/d/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object p2, p0, Lcom/lzy/okgo/d/d;->lZ:Lcom/lzy/okgo/d/f;

    invoke-static {p1, p2}, Lcom/lzy/okgo/d/e;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/d/f;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/d/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    return-void
.end method
