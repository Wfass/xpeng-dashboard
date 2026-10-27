.class Lcom/alibaba/mtl/log/c/b;
.super Ljava/lang/Object;
.source "LogSqliteStore.java"

# interfaces
.implements Lcom/alibaba/mtl/log/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/c/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/mtl/log/c/b$a;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "SELECT * FROM %s ORDER BY %s ASC LIMIT %s"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->ae:Ljava/lang/String;

    .line 43
    const-string v0, "SELECT count(*) FROM %s"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->af:Ljava/lang/String;

    .line 44
    const-string v0, "DELETE FROM log where _id in ( select _id from log  ORDER BY _id ASC LIMIT %d )"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->ag:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/alibaba/mtl/log/c/b$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mtl/log/c/b$a;-><init>(Lcom/alibaba/mtl/log/c/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    .line 51
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 0

    .line 345
    if-eqz p1, :cond_0

    .line 347
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 348
    :catch_0
    move-exception p1

    .line 351
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/c/b;Landroid/database/Cursor;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 111
    :cond_0
    nop

    .line 112
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    nop

    .line 114
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 116
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    nop

    .line 118
    move v6, v0

    move v8, v6

    move v7, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 119
    const-string v9, "log"

    const-string v10, "_id=?"

    new-array v11, v5, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/mtl/log/model/a;

    iget v13, v13, Lcom/alibaba/mtl/log/model/a;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    .line 120
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_1

    .line 121
    nop

    .line 122
    const-string v7, "UTSqliteLogStore"

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "[delete]  "

    aput-object v12, v11, v0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/mtl/log/model/a;

    iget v12, v12, Lcom/alibaba/mtl/log/model/a;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, " ret:"

    aput-object v12, v11, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v2

    invoke-static {v7, v11}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    move v7, v0

    goto :goto_1

    .line 123
    :cond_1
    const-string v9, "6005"

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/mtl/log/model/a;

    iget-object v10, v10, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_2

    .line 124
    add-int/lit8 v8, v8, 0x1

    .line 118
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 129
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    goto :goto_2

    .line 130
    :catch_0
    move-exception v6

    .line 133
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    goto :goto_3

    .line 134
    :catch_1
    move-exception v6

    .line 136
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v6, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    goto :goto_6

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    goto :goto_4

    .line 130
    :catch_2
    move-exception v0

    .line 133
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    goto :goto_5

    .line 134
    :catch_3
    move-exception v0

    .line 136
    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    .line 139
    :cond_4
    const-string v1, "UTSqliteLogStore"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "db is null"

    aput-object v7, v6, v0

    invoke-static {v1, v6}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    move v7, v0

    move v8, v7

    :goto_6
    const-string v1, "UTSqliteLogStore"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "delete "

    aput-object v6, v4, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const-string p1, " isSuccess:"

    aput-object p1, v4, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 142
    monitor-exit p0

    return v8

    .line 107
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 109
    :cond_5
    :goto_7
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 147
    nop

    .line 149
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 150
    :try_start_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 146
    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 193
    :catch_0
    move-exception p1

    move-object v1, v0

    goto/16 :goto_8

    .line 152
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v6, "SELECT * FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 160
    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    const-string p1, " ORDER BY "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "time"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASC "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string p1, " LIMIT "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string p2, "UTSqliteLogStore"

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sql:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    nop

    .line 168
    :try_start_3
    invoke-virtual {v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 169
    :goto_0
    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 170
    new-instance p2, Lcom/alibaba/mtl/log/model/a;

    invoke-direct {p2}, Lcom/alibaba/mtl/log/model/a;-><init>()V

    .line 171
    const-string v0, "UTSqliteLogStore"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "pos"

    aput-object v6, v5, v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    const-string v7, "count"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/alibaba/mtl/log/model/a;->id:I

    .line 173
    const-string v0, "eventId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    .line 174
    const-string v0, "priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/mtl/log/model/a;->Y:Ljava/lang/String;

    .line 175
    const-string v0, "content"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p2, v0}, Lcom/alibaba/mtl/log/model/a;->l(Ljava/lang/String;)V

    .line 177
    const-string v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/mtl/log/model/a;->aa:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    :try_start_5
    const-string v0, "_index"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/mtl/log/model/a;->ab:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 182
    :goto_1
    :try_start_6
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 183
    goto/16 :goto_0

    .line 187
    :catchall_1
    move-exception p2

    goto :goto_5

    .line 184
    :catch_2
    move-exception p2

    move-object v0, p1

    goto :goto_3

    .line 187
    :cond_2
    :try_start_7
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    :goto_2
    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    goto :goto_4

    .line 187
    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_5

    .line 184
    :catch_3
    move-exception p2

    .line 185
    :goto_3
    :try_start_8
    const-string p1, "UTSqliteLogStore"

    const-string v3, "[get]"

    invoke-static {p1, v3, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 187
    :try_start_9
    invoke-direct {p0, v0}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    goto :goto_2

    .line 190
    :goto_4
    goto :goto_6

    .line 187
    :goto_5
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2

    .line 191
    :cond_3
    const-string p1, "UTSqliteLogStore"

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "db is null"

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 194
    :goto_6
    goto :goto_9

    .line 193
    :catch_4
    move-exception p1

    goto :goto_8

    .line 146
    :goto_7
    monitor-exit p0

    throw p1

    .line 193
    :goto_8
    nop

    .line 195
    :goto_9
    monitor-exit p0

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/log/c/b;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 54
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    nop

    .line 60
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v3}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v3, :cond_4

    .line 62
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    nop

    .line 64
    move v1, v2

    :goto_0
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/log/model/a;

    .line 66
    if-eqz v4, :cond_2

    .line 67
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 68
    const-string v6, "eventId"

    iget-object v7, v4, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "priority"

    iget-object v7, v4, Lcom/alibaba/mtl/log/model/a;->Y:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Lcom/alibaba/mtl/log/model/a;->j()Ljava/lang/String;

    move-result-object v6

    .line 71
    const-string v7, "content"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v6, "time"

    iget-object v7, v4, Lcom/alibaba/mtl/log/model/a;->aa:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v6, "_index"

    iget-object v7, v4, Lcom/alibaba/mtl/log/model/a;->ab:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "log"

    const-string v7, ""

    invoke-virtual {v3, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 75
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 76
    nop

    .line 77
    goto :goto_2

    .line 79
    :cond_1
    const-string v7, "UTSqliteLogStore"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "[insert] "

    aput-object v9, v8, v2

    iget-object v4, v4, Lcom/alibaba/mtl/log/model/a;->ab:Ljava/lang/String;

    aput-object v4, v8, v0

    const/4 v4, 0x2

    const-string v9, " isSuccess:"

    aput-object v9, v8, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x4

    const-string v9, "ret"

    aput-object v9, v8, v4

    const/4 v4, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_3
    move v2, v0

    goto :goto_2

    .line 86
    :catch_0
    move-exception p1

    move v2, v0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    goto :goto_9

    .line 86
    :catch_1
    move-exception p1

    :goto_1
    move-object v1, v3

    goto :goto_5

    .line 84
    :cond_4
    :try_start_4
    const-string p1, "UTSqliteLogStore"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "db is null"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :goto_2
    if-eqz v3, :cond_5

    .line 93
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    goto :goto_3

    .line 94
    :catch_2
    move-exception p1

    .line 97
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 99
    goto :goto_4

    .line 98
    :catch_3
    move-exception p1

    .line 101
    :cond_5
    :goto_4
    :try_start_7
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    .line 91
    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_9

    .line 86
    :catch_4
    move-exception p1

    .line 87
    :goto_5
    :try_start_8
    const-string v0, "UTSqliteLogStore"

    const-string v3, "insert error"

    invoke-static {v0, v3, p1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 91
    if-eqz v1, :cond_6

    .line 93
    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 95
    goto :goto_6

    .line 94
    :catch_5
    move-exception p1

    .line 97
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 99
    goto :goto_7

    .line 98
    :catch_6
    move-exception p1

    .line 101
    :cond_6
    :goto_7
    :try_start_b
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 102
    :goto_8
    nop

    .line 103
    monitor-exit p0

    return v2

    .line 91
    :goto_9
    if-eqz v3, :cond_7

    .line 93
    :try_start_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 95
    goto :goto_a

    .line 94
    :catch_7
    move-exception v0

    .line 97
    :goto_a
    :try_start_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 99
    goto :goto_b

    .line 98
    :catch_8
    move-exception v0

    .line 101
    :cond_7
    :goto_b
    :try_start_e
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 53
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 55
    :cond_8
    :goto_c
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 314
    :try_start_1
    const-string v3, "log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < ?"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {p2, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    .line 315
    :catch_0
    move-exception p1

    .line 317
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    goto :goto_1

    .line 320
    :cond_0
    const-string p1, "UTSqliteLogStore"

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "db is null"

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    :goto_1
    monitor-exit p0

    return-void

    .line 310
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    const-string v1, "log"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)V
    .locals 4

    .line 328
    if-gtz p1, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/mtl/log/c/b;->ag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    .line 336
    :catch_0
    move-exception p1

    .line 338
    :goto_0
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    goto :goto_1

    .line 341
    :cond_1
    const-string p1, "UTSqliteLogStore"

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "db is null"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :goto_1
    return-void
.end method

.method public declared-synchronized g()I
    .locals 6

    monitor-enter p0

    .line 199
    nop

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    nop

    .line 202
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 204
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/alibaba/mtl/log/c/b;->af:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "log"

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v1

    goto :goto_1

    .line 210
    :catch_0
    move-exception v3

    move-object v3, v1

    goto :goto_2

    .line 212
    :cond_0
    :goto_0
    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    goto :goto_3

    .line 212
    :catchall_1
    move-exception v2

    :goto_1
    invoke-direct {p0, v3}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 210
    :catch_1
    move-exception v1

    .line 212
    :goto_2
    invoke-direct {p0, v3}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 214
    goto :goto_4

    .line 216
    :cond_1
    const-string v0, "UTSqliteLogStore"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "db is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    :goto_4
    monitor-exit p0

    return v2

    .line 198
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
