.class public abstract Lcom/activeandroid/Model;
.super Ljava/lang/Object;
.source "Model.java"


# static fields
.field private static final HASH_PRIME:I = 0x2e3


# instance fields
.field private final idName:Ljava/lang/String;

.field private mId:Ljava/lang/Long;

.field private final mTableInfo:Lcom/activeandroid/TableInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    .line 55
    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Model;->idName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static delete(Ljava/lang/Class;J)V
    .locals 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;J)V"
        }
    .end annotation

    .line 169
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    .line 170
    .local v0, "tableInfo":Lcom/activeandroid/TableInfo;
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    invoke-virtual {v1, p0}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 171
    return-void
.end method

.method public static load(Ljava/lang/Class;J)Lcom/activeandroid/Model;
    .locals 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 174
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    .line 175
    .local v0, "tableInfo":Lcom/activeandroid/TableInfo;
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v1, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getIdName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final delete()V
    .locals 6

    .line 67
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/activeandroid/Model;->idName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    invoke-static {p0}, Lcom/activeandroid/Cache;->removeEntity(Lcom/activeandroid/Model;)V

    .line 70
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    .line 71
    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 72
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 303
    instance-of v0, p1, Lcom/activeandroid/Model;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/activeandroid/Model;

    .line 306
    .local v0, "other":Lcom/activeandroid/Model;
    iget-object v3, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    .line 307
    invoke-virtual {v3}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 309
    .end local v0    # "other":Lcom/activeandroid/Model;
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method protected final getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "foreignKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 289
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0, p1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 315
    const/16 v0, 0x2e3

    .line 316
    .local v0, "hash":I
    iget-object v1, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x2e3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 317
    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 318
    return v0
.end method

.method public final loadFromCursor(Landroid/database/Cursor;)V
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;

    move-object/from16 v1, p0

    .line 185
    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 186
    .local v3, "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/Field;

    .line 187
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v0, v1, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0, v5}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "fieldName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 189
    .local v7, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 191
    .local v8, "columnIndex":I
    if-gez v8, :cond_0

    .line 192
    goto :goto_0

    .line 195
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    :try_start_0
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    .line 199
    .local v9, "columnIsNull":Z
    invoke-static {v7}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    .line 200
    .local v10, "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    const/4 v11, 0x0

    .line 202
    .local v11, "value":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 203
    :try_start_1
    invoke-virtual {v10}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v12

    goto :goto_1

    .line 274
    .end local v9    # "columnIsNull":Z
    .end local v10    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    .end local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_f

    .line 271
    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_10

    .line 268
    :catch_2
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_11

    .line 208
    .restart local v9    # "columnIsNull":Z
    .restart local v10    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 209
    const/4 v5, 0x0

    .line 259
    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move-object/from16 v19, v3

    goto/16 :goto_d

    .line 211
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    const-class v12, Ljava/lang/Byte;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 212
    move-object/from16 v19, v3

    goto/16 :goto_c

    .line 214
    :cond_3
    const-class v12, Ljava/lang/Short;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 215
    move-object/from16 v19, v3

    goto/16 :goto_b

    .line 217
    :cond_4
    const-class v12, Ljava/lang/Integer;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 218
    move-object/from16 v19, v3

    goto/16 :goto_a

    .line 220
    :cond_5
    const-class v12, Ljava/lang/Long;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 221
    move-object/from16 v19, v3

    goto/16 :goto_9

    .line 223
    :cond_6
    const-class v12, Ljava/lang/Float;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 224
    move-object/from16 v19, v3

    goto/16 :goto_8

    .line 226
    :cond_7
    const-class v12, Ljava/lang/Double;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 227
    move-object/from16 v19, v3

    goto/16 :goto_7

    .line 229
    :cond_8
    const-class v12, Ljava/lang/Boolean;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 230
    move-object/from16 v19, v3

    const/4 v12, 0x0

    move v3, v0

    goto/16 :goto_6

    .line 232
    :cond_9
    const-class v12, Ljava/lang/Character;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 233
    move-object/from16 v19, v3

    goto/16 :goto_5

    .line 235
    :cond_a
    const-class v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v12, :cond_b

    .line 236
    :try_start_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v0

    goto/16 :goto_2

    .line 238
    :cond_b
    :try_start_4
    const-class v12, [Ljava/lang/Byte;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    const-class v12, [B

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 239
    move-object/from16 v19, v3

    goto :goto_4

    .line 241
    :cond_c
    invoke-static {v7}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 242
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 243
    .local v14, "entityId":J
    move-object v12, v7

    .line 245
    .local v12, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    invoke-static {v12, v14, v15}, Lcom/activeandroid/Cache;->getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v16

    .line 246
    .local v16, "entity":Lcom/activeandroid/Model;
    if-nez v16, :cond_d

    .line 247
    new-instance v13, Lcom/activeandroid/query/Select;

    invoke-direct {v13}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v13, v12}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v19, v3

    :try_start_5
    iget-object v3, v1, Lcom/activeandroid/Model;->idName:Ljava/lang/String;

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v3, v17

    invoke-virtual {v13, v0, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3

    .line 250
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    move-object/from16 v11, v16

    .line 251
    .end local v12    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/activeandroid/Model;>;"
    .end local v14    # "entityId":J
    .end local v16    # "entity":Lcom/activeandroid/Model;
    goto/16 :goto_d

    .line 252
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Ljava/lang/Enum;

    invoke-static {v7, v0}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 254
    move-object v0, v7

    .line 255
    .local v0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    move-object v11, v3

    .end local v0    # "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    goto/16 :goto_d

    .line 239
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_d

    .line 233
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_d

    .line 230
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v19, v3

    const/4 v12, 0x0

    move v3, v0

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_12

    move v12, v3

    nop

    :cond_12
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 227
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 224
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 221
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 218
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 215
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    goto :goto_d

    .line 212
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    .line 259
    :cond_19
    :goto_d
    if-eqz v10, :cond_1a

    if-nez v9, :cond_1a

    .line 260
    invoke-virtual {v10, v11}, Lcom/activeandroid/serializer/TypeSerializer;->deserialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_e

    .line 274
    .end local v9    # "columnIsNull":Z
    .end local v10    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    .end local v11    # "value":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_f

    .line 271
    :catch_4
    move-exception v0

    goto :goto_10

    .line 268
    :catch_5
    move-exception v0

    goto :goto_11

    .line 264
    .restart local v9    # "columnIsNull":Z
    .restart local v10    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_1a
    :goto_e
    if-eqz v11, :cond_1b

    .line 265
    invoke-virtual {v5, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v9    # "columnIsNull":Z
    .end local v10    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    .end local v11    # "value":Ljava/lang/Object;
    goto :goto_12

    .line 274
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    .line 275
    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "columnIndex":I
    goto :goto_13

    .line 271
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fieldName":Ljava/lang/String;
    .restart local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "columnIndex":I
    :catch_7
    move-exception v0

    move-object/from16 v19, v3

    .line 272
    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_12

    .line 268
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_8
    move-exception v0

    move-object/from16 v19, v3

    .line 269
    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "columnIndex":I
    :cond_1b
    :goto_12
    nop

    .line 277
    :goto_13
    nop

    .line 186
    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 279
    .end local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    move-object/from16 v19, v3

    .end local v3    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "columnsOrdered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    if-eqz v0, :cond_1d

    .line 280
    invoke-static/range {p0 .. p0}, Lcom/activeandroid/Cache;->addEntity(Lcom/activeandroid/Model;)V

    .line 282
    :cond_1d
    return-void
.end method

.method public final save()Ljava/lang/Long;
    .locals 13

    .line 75
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v2}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 79
    .local v3, "field":Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v4, v3}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 82
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 87
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 88
    invoke-static {v5}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v8

    .line 89
    .local v8, "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    if-eqz v8, :cond_0

    .line 91
    invoke-virtual {v8, v7}, Lcom/activeandroid/serializer/TypeSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 93
    if-eqz v7, :cond_0

    .line 94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 96
    invoke-virtual {v8}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    const-string v9, "TypeSerializer returned wrong type: expected a %s but got a %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 98
    invoke-virtual {v8}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    aput-object v5, v10, v6

    .line 97
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/activeandroid/util/Log;->w(Ljava/lang/String;)I

    .line 106
    .end local v8    # "typeSerializer":Lcom/activeandroid/serializer/TypeSerializer;
    :cond_0
    if-nez v7, :cond_1

    .line 107
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 109
    :cond_1
    const-class v6, Ljava/lang/Byte;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_9

    .line 112
    :cond_2
    const-class v6, Ljava/lang/Short;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_8

    .line 115
    :cond_3
    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_7

    .line 118
    :cond_4
    const-class v6, Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_6

    .line 121
    :cond_5
    const-class v6, Ljava/lang/Float;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_5

    .line 124
    :cond_6
    const-class v6, Ljava/lang/Double;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_4

    .line 127
    :cond_7
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 130
    :cond_8
    const-class v6, Ljava/lang/Character;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    .line 133
    :cond_9
    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 136
    :cond_a
    const-class v6, [Ljava/lang/Byte;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-class v6, [B

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_1

    .line 139
    :cond_b
    invoke-static {v5}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 140
    move-object v6, v7

    check-cast v6, Lcom/activeandroid/Model;

    invoke-virtual {v6}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_a

    .line 142
    :cond_c
    const-class v6, Ljava/lang/Enum;

    invoke-static {v5, v6}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 143
    move-object v6, v7

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_a

    .line 137
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_d
    :goto_1
    move-object v6, v7

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_a

    .line 131
    :cond_e
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 128
    :cond_f
    :goto_3
    move-object v6, v7

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_a

    .line 125
    :cond_10
    :goto_4
    move-object v6, v7

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_a

    .line 122
    :cond_11
    :goto_5
    move-object v6, v7

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_a

    .line 119
    :cond_12
    :goto_6
    move-object v6, v7

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    .line 116
    :cond_13
    :goto_7
    move-object v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 113
    :cond_14
    :goto_8
    move-object v6, v7

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_a

    .line 110
    :cond_15
    :goto_9
    move-object v6, v7

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 149
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_b

    .line 146
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 147
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    :goto_a
    nop

    .line 152
    :goto_b
    goto/16 :goto_0

    .line 154
    :cond_17
    iget-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 155
    iget-object v2, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v2}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    goto :goto_c

    .line 158
    :cond_18
    iget-object v2, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v2}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/activeandroid/Model;->idName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    :goto_c
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    .line 162
    invoke-virtual {v4}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-static {v4, v5}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 163
    iget-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
