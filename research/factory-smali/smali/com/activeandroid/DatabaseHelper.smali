.class public final Lcom/activeandroid/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final MIGRATION_PATH:Ljava/lang/String; = "migrations"


# instance fields
.field private final mSqlParser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/activeandroid/Configuration;)V
    .locals 4
    .param p1, "configuration"    # Lcom/activeandroid/Configuration;

    .line 59
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 60
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/DatabaseHelper;->copyAttachedDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getSqlParser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/DatabaseHelper;->mSqlParser:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 155
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getTableInfos()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/TableInfo;

    .line 156
    .local v1, "tableInfo":Lcom/activeandroid/TableInfo;
    invoke-static {v1}, Lcom/activeandroid/util/SQLiteUtils;->createTableDefinition(Lcom/activeandroid/TableInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    .end local v1    # "tableInfo":Lcom/activeandroid/TableInfo;
    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private executeCreateIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 138
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getTableInfos()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/TableInfo;

    .line 139
    .local v1, "tableInfo":Lcom/activeandroid/TableInfo;
    invoke-static {v1}, Lcom/activeandroid/util/SQLiteUtils;->createIndexDefinition(Lcom/activeandroid/TableInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "definitions":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 142
    .local v5, "definition":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    .end local v5    # "definition":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    .end local v1    # "tableInfo":Lcom/activeandroid/TableInfo;
    .end local v2    # "definitions":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private executeDelimitedSqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-static {p2}, Lcom/activeandroid/util/SqlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    .end local v2    # "command":Ljava/lang/String;
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method private executeLegacySqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 240
    .local v2, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 241
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 242
    nop

    .line 244
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_1

    .line 245
    const-string v3, ";"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 255
    nop

    .line 256
    return-void

    .line 252
    :catchall_0
    move-exception v1

    invoke-static {v2}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private executeMigrations(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "migrationExecuted":Z
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "migrations"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/activeandroid/util/NaturalOrderComparator;

    invoke-direct {v2}, Lcom/activeandroid/util/NaturalOrderComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-string v4, ".sql"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 177
    .local v4, "version":I
    if-le v4, p2, :cond_0

    if-gt v4, p3, :cond_0

    .line 178
    invoke-direct {p0, p1, v3}, Lcom/activeandroid/DatabaseHelper;->executeSqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " executed succesfully."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/activeandroid/util/Log;->i(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .end local v4    # "version":I
    :cond_0
    goto :goto_1

    .line 184
    :catch_0
    move-exception v4

    .line 185
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping invalidly named file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/activeandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    nop

    .line 196
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 191
    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 194
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to execute migrations."

    invoke-static {v2, v1}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return v0
.end method

.method private executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    sget-boolean v0, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "Foreign Keys supported. Enabling foreign key features."

    invoke-static {v0}, Lcom/activeandroid/util/Log;->i(Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method private executeSqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "file"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    .line 206
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 208
    const-string v1, "delimited"

    iget-object v2, p0, Lcom/activeandroid/DatabaseHelper;->mSqlParser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/activeandroid/DatabaseHelper;->executeDelimitedSqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/activeandroid/DatabaseHelper;->executeLegacySqlScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :goto_1
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public copyAttachedDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "dbPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 106
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v2, "output":Ljava/io/OutputStream;
    const/16 v3, 0x2000

    new-array v4, v3, [B

    .line 111
    .local v4, "buffer":[B
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "length":I
    if-lez v6, :cond_1

    .line 112
    invoke-virtual {v2, v4, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 116
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 117
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "output":Ljava/io/OutputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "length":I
    goto :goto_1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to open file"

    invoke-static {v2, v1}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/activeandroid/DatabaseHelper;->executeMigrations(Landroid/database/sqlite/SQLiteDatabase;II)Z

    .line 78
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreateIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/activeandroid/DatabaseHelper;->executeMigrations(Landroid/database/sqlite/SQLiteDatabase;II)Z

    .line 86
    return-void
.end method
