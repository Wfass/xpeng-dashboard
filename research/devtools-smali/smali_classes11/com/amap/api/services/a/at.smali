.class public Lcom/amap/api/services/a/at;
.super Ljava/lang/Object;
.source "DynamicFileDBCreator.java"

# interfaces
.implements Lcom/amap/api/services/a/w;


# static fields
.field private static fj:Lcom/amap/api/services/a/at;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized br()Lcom/amap/api/services/a/at;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/at;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/at;->fj:Lcom/amap/api/services/a/at;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/amap/api/services/a/at;

    invoke-direct {v1}, Lcom/amap/api/services/a/at;-><init>()V

    sput-object v1, Lcom/amap/api/services/a/at;->fj:Lcom/amap/api/services/a/at;

    .line 64
    :cond_0
    sget-object v1, Lcom/amap/api/services/a/at;->fj:Lcom/amap/api/services/a/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "dafile.db"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 103
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    .line 107
    const-string v0, "DynamicFileDBCreator"

    const-string v1, "onCreate"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 115
    return-void
.end method

.method public b()I
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method
