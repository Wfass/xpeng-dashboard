.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "KeyConfigDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 30
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 31
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 35
    :goto_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 36
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    :goto_1
    const/4 v0, 0x3

    iget v1, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 41
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 42
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 44
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "INSERT OR REPLACE INTO `KeyConfig`(`pkgName`,`configName`,`selected`,`configInfo`) VALUES (?,?,?,?)"

    return-object v0
.end method
