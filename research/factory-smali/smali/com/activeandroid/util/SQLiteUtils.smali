.class public final Lcom/activeandroid/util/SQLiteUtils;
.super Ljava/lang/Object;
.source "SQLiteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
    }
.end annotation


# static fields
.field public static final FOREIGN_KEYS_SUPPORTED:Z

.field private static final TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
            ">;"
        }
    .end annotation
.end field

.field private static sIndexGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOnUniqueConflictsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/activeandroid/annotation/Column$ConflictAction;",
            ">;"
        }
    .end annotation
.end field

.field private static sUniqueGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    .line 61
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$1;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils$1;-><init>()V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static createColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 8
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "definition":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v3

    .line 262
    .local v3, "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    const-class v4, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/activeandroid/annotation/Column;

    .line 264
    .local v4, "column":Lcom/activeandroid/annotation/Column;
    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v1

    .line 268
    :cond_0
    sget-object v5, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v5, Lcom/activeandroid/util/SQLiteUtils;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v5}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {v1}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    sget-object v5, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v5}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_2
    const-class v5, Ljava/lang/Enum;

    invoke-static {v1, v5}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object v5, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v5}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    const-string v5, " PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_4
    if-eqz v4, :cond_7

    .line 289
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->length()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_5

    .line 290
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_5
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->notNull()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 296
    const-string v5, " NOT NULL ON CONFLICT "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->onNullConflict()Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_6
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->unique()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 301
    const-string v5, " UNIQUE ON CONFLICT "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->onUniqueConflict()Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_7
    :goto_1
    sget-boolean v5, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    if-eqz v5, :cond_9

    invoke-static {v1}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 307
    const-string v5, " REFERENCES "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v1}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v5, " ON DELETE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->onDelete()Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v5, " ON UPDATE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-interface {v4}, Lcom/activeandroid/annotation/Column;->onUpdate()Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 317
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No type mapping for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;)I

    .line 320
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static createIndexColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V
    .locals 8
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 211
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/annotation/Column;

    .line 214
    .local v1, "column":Lcom/activeandroid/annotation/Column;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->index()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->indexGroups()[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "groups":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 226
    .local v5, "group":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    goto :goto_1

    .line 229
    :cond_2
    sget-object v6, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 230
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 234
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v7, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v5    # "group":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_4
    return-void
.end method

.method public static createIndexDefinition(Lcom/activeandroid/TableInfo;)[Ljava/lang/String;
    .locals 9
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "definitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    .line 193
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 194
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, v2}, Lcom/activeandroid/util/SQLiteUtils;->createIndexColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V

    .line 195
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 197
    :cond_0
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 198
    new-array v1, v2, [Ljava/lang/String;

    return-object v1

    .line 201
    :cond_1
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->sIndexGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 202
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v4, "CREATE INDEX IF NOT EXISTS %s on %s(%s);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    .line 204
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 202
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static createTableDefinition(Lcom/activeandroid/TableInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "definitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 243
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, v2}, Lcom/activeandroid/util/SQLiteUtils;->createColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "definition":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "definition":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 249
    :cond_1
    invoke-static {p0}, Lcom/activeandroid/util/SQLiteUtils;->createUniqueDefinition(Lcom/activeandroid/TableInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    const-string v1, "CREATE TABLE IF NOT EXISTS %s (%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    .line 252
    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 251
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createUniqueColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V
    .locals 9
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 159
    invoke-virtual {p0, p1}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/annotation/Column;

    .line 162
    .local v1, "column":Lcom/activeandroid/annotation/Column;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->uniqueGroups()[Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "groups":[Ljava/lang/String;
    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->onUniqueConflicts()[Lcom/activeandroid/annotation/Column$ConflictAction;

    move-result-object v3

    .line 168
    .local v3, "conflictActions":[Lcom/activeandroid/annotation/Column$ConflictAction;
    array-length v4, v2

    array-length v5, v3

    if-eq v4, v5, :cond_1

    .line 169
    return-void

    .line 171
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 172
    aget-object v5, v2, v4

    .line 173
    .local v5, "group":Ljava/lang/String;
    aget-object v6, v3, v4

    .line 175
    .local v6, "conflictAction":Lcom/activeandroid/annotation/Column$ConflictAction;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 176
    goto :goto_1

    .line 178
    :cond_2
    sget-object v7, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 179
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_3

    .line 180
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 182
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v8, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v8, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v5    # "group":Ljava/lang/String;
    .end local v6    # "conflictAction":Lcom/activeandroid/annotation/Column$ConflictAction;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method public static createUniqueDefinition(Lcom/activeandroid/TableInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "tableInfo"    # Lcom/activeandroid/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/activeandroid/TableInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "definitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    .line 138
    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 139
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, v2}, Lcom/activeandroid/util/SQLiteUtils;->createUniqueColumnDefinition(Lcom/activeandroid/TableInfo;Ljava/lang/reflect/Field;)V

    .line 140
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    return-object v0

    .line 146
    :cond_1
    sget-object v1, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 147
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/activeandroid/util/SQLiteUtils;->sUniqueGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 149
    .local v4, "group":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/activeandroid/util/SQLiteUtils;->sOnUniqueConflictsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/activeandroid/annotation/Column$ConflictAction;

    .line 151
    .local v5, "conflictAction":Lcom/activeandroid/annotation/Column$ConflictAction;
    const-string v6, "UNIQUE (%s) ON CONFLICT %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ", "

    .line 152
    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/activeandroid/annotation/Column$ConflictAction;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 151
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "group":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "conflictAction":Lcom/activeandroid/annotation/Column$ConflictAction;
    goto :goto_1

    .line 155
    :cond_2
    return-object v0
.end method

.method public static execSql(Ljava/lang/String;)V
    .locals 1
    .param p0, "sql"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static execSql(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "bindArgs"    # [Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static intQuery(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->processIntCursor(Landroid/database/Cursor;)I

    move-result v1

    .line 116
    .local v1, "number":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    return v1
.end method

.method public static lexSqlScript(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "sqlScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "inString":Z
    const/4 v2, 0x0

    .line 378
    .local v2, "quoteNext":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v3, "b":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v5

    .local v1, "i":I
    .local v2, "inString":Z
    .local v6, "quoteNext":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 381
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 383
    .local v7, "c":C
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_0

    if-nez v2, :cond_0

    if-nez v6, :cond_0

    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v8

    .line 386
    const/4 v2, 0x0

    .line 387
    const/4 v6, 0x0

    .line 388
    goto :goto_3

    .line 391
    :cond_0
    const/16 v8, 0x27

    const/4 v9, 0x1

    if-ne v7, v8, :cond_2

    if-nez v6, :cond_2

    .line 392
    if-nez v2, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    move v2, v8

    .line 395
    :cond_2
    const/16 v8, 0x5c

    if-ne v7, v8, :cond_3

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v9, v5

    :goto_2
    move v6, v9

    .line 397
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    .end local v7    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_5
    return-object v0
.end method

.method public static processCursor(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 325
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    .line 326
    .local v0, "tableInfo":Lcom/activeandroid/TableInfo;
    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "idName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 332
    .local v4, "entityConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v5, "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/activeandroid/Cache;->getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v6

    .line 340
    .local v6, "entity":Lcom/activeandroid/Model;
    if-nez v6, :cond_1

    .line 341
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/activeandroid/Model;

    move-object v6, v7

    .line 344
    :cond_1
    invoke-virtual {v6, p1}, Lcom/activeandroid/Model;->loadFromCursor(Landroid/database/Cursor;)V

    .line 345
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v6    # "entity":Lcom/activeandroid/Model;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    .line 363
    .end local v4    # "entityConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 361
    :catch_0
    move-exception v3

    .line 362
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed to process cursor."

    invoke-static {v4, v3}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 351
    :catch_1
    move-exception v3

    .line 352
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Your model "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not define a default "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "constructor. The default constructor is required for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "now in ActiveAndroid models, as the process to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "populate the ORM model is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "1. instantiate default model "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "2. populate fields"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static processIntCursor(Landroid/database/Cursor;)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 369
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0

    .line 372
    :cond_0
    return v1
.end method

.method public static rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v0}, Lcom/activeandroid/util/SQLiteUtils;->processCursor(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    return-object v1
.end method

.method public static rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 122
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {p0, p1, p2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/Model;

    return-object v1

    .line 128
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
