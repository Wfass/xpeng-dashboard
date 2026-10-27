.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final allowMainThreadQueries:Z

.field public final callbacks:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final mMigrationNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;ZLjava/util/Set;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sqliteOpenHelperFactory"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "migrationContainer"    # Landroidx/room/RoomDatabase$MigrationContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "allowMainThreadQueries"    # Z
    .param p7, "journalMode"    # Landroidx/room/RoomDatabase$JournalMode;
    .param p8, "requireMigration"    # Z
    .param p9    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p5, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/room/RoomDatabase$Callback;>;"
    .local p9, "migrationNotRequiredFrom":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p3, p0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 106
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 109
    iput-object p5, p0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 110
    iput-boolean p6, p0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 111
    iput-object p7, p0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 112
    iput-boolean p8, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    .line 113
    iput-object p9, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    .line 114
    return-void
.end method


# virtual methods
.method public isMigrationRequiredFrom(I)Z
    .locals 2
    .param p1, "version"    # I

    .line 125
    iget-boolean v0, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
