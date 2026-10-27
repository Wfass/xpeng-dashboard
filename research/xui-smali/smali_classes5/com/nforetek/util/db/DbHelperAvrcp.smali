.class public Lcom/nforetek/util/db/DbHelperAvrcp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelperAvrcp.java"


# static fields
.field private static D:Z = false

.field private static final DATABASE_NAME:Ljava/lang/String; = "db_avrcp14"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "nFore_DbHelperAvrcp"


# instance fields
.field public final TABLE_FOLDER_ITEMS:Ljava/lang/String;

.field public final TABLE_MEDIA_ITEMS:Ljava/lang/String;

.field public final TABLE_MEDIA_PLAYER_ITEMS:Ljava/lang/String;

.field public clearFolderItems:Ljava/lang/String;

.field public clearMediaItems:Ljava/lang/String;

.field public clearMediaItemsByScopeId:Ljava/lang/String;

.field public clearMediaPlayerItems:Ljava/lang/String;

.field public insertFolderItems:Ljava/lang/String;

.field public insertMediaItems:Ljava/lang/String;

.field public insertMediaPlayerItems:Ljava/lang/String;

.field public selectFolderItems:Ljava/lang/String;

.field public selectMediaItems:Ljava/lang/String;

.field public selectMediaPlayerItems:Ljava/lang/String;

.field public updateMediaItems:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nforetek/util/db/DbHelperAvrcp;->D:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "db_avrcp14"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const-string v0, "MediaPlayerItems"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->TABLE_MEDIA_PLAYER_ITEMS:Ljava/lang/String;

    .line 20
    const-string v0, "FolderItems"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->TABLE_FOLDER_ITEMS:Ljava/lang/String;

    .line 21
    const-string v0, "MediaItems"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->TABLE_MEDIA_ITEMS:Ljava/lang/String;

    .line 27
    const-string v0, "delete from MediaPlayerItems;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->clearMediaPlayerItems:Ljava/lang/String;

    .line 28
    const-string v0, "delete from FolderItems;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->clearFolderItems:Ljava/lang/String;

    .line 29
    const-string v0, "delete from MediaItems;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->clearMediaItems:Ljava/lang/String;

    .line 30
    const-string v0, "delete from MediaItems where ScopeId = "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->clearMediaItemsByScopeId:Ljava/lang/String;

    .line 36
    const-string v0, "insert into MediaPlayerItems value(?, ?, ?, ?, ?, ?, ?);"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->insertMediaPlayerItems:Ljava/lang/String;

    .line 37
    const-string v0, "insert into FolderItems value(?, ?, ?, ?, ?);"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->insertFolderItems:Ljava/lang/String;

    .line 38
    const-string v0, "insert into MediaItems(UIDcounter, UID, MediaType, Name) value(?, ?, ?, ?);"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->insertMediaItems:Ljava/lang/String;

    .line 41
    const-string v0, "update MediaItems set Title = ? where uid = ?;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->updateMediaItems:Ljava/lang/String;

    .line 44
    const-string v0, "select * from MediaPlayerItems order by MajorPlayerType, Name;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->selectMediaPlayerItems:Ljava/lang/String;

    .line 45
    const-string v0, "select * from FolderItems order by FolderType, Name;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->selectFolderItems:Ljava/lang/String;

    .line 46
    const-string v0, "select * from MediaItems where ScopeId = ? order by MediaType, Name;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperAvrcp;->selectMediaItems:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    sget-boolean v0, Lcom/nforetek/util/db/DbHelperAvrcp;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "nFore_DbHelperAvrcp"

    const-string v1, "+++ Begin of onCreate() +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const-string v0, "create table if not exists MediaPlayerItems( _ID INTEGER primary key autoincrement, UIDcounter smallint, PlayerId smallint, MajorPlayerType blob, PlayerSubType int, PlayStatus blob, FeatureBitMask blob, Name nvarchar(20));"

    .line 61
    .local v0, "CREATE_TABLE_MEDIAPLAYERITEMS":Ljava/lang/String;
    const-string v1, "create table if not exists FolderItems(_ID INTEGER primary key autoincrement, UIDcounter smallint, UID bigint, FolderType blob, IsPlayable blob, Name nvarchar(20));"

    .line 63
    .local v1, "CREATE_TABLE_FOLDERITEMS":Ljava/lang/String;
    const-string v2, "create table if not exists MediaItems(_ID INTEGER primary key autoincrement, ScopeId smallint, UIDcounter smallint, UID bigint, MediaType blob, Name nvarchar(20), Title nvarchar(20), Artist nvarchar(20), Album nvarchar(20), TrackNumber nvarchar(5), TotalTracks nvarchar(6), Genre nvarchar(10), Time_ms nvarchar(10));"

    .line 65
    .local v2, "CREATE_TABLE_MEDIAITEMS":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 72
    sget-boolean v0, Lcom/nforetek/util/db/DbHelperAvrcp;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "nFore_DbHelperAvrcp"

    const-string v1, "+++ Begin of onUpgrade() +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS MediaPlayerItems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "DROP TABLE IF EXISTS FolderItems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "DROP TABLE IF EXISTS MediaItems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void
.end method
