.class Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$1;
.super Landroidx/room/migration/Migration;
.source "ResourceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 51
    const-string v0, "ResourceDatabase"

    const-string v1, "migrate 2 -> 3"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "ALTER TABLE ResourceInfo ADD COLUMN \'status\' INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method
