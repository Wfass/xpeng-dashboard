.class public Lcom/lzy/okgo/db/TableEntity;
.super Ljava/lang/Object;
.source "TableEntity.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/okgo/db/ColumnEntity;",
            ">;"
        }
    .end annotation
.end field

.field public tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lzy/okgo/db/TableEntity;->tableName:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;
    .locals 1
    .param p1, "columnEntity"    # Lcom/lzy/okgo/db/ColumnEntity;

    .line 41
    iget-object v0, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object p0
.end method

.method public buildTableString()Ljava/lang/String;
    .locals 8

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lzy/okgo/db/TableEntity;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/db/ColumnEntity;

    .line 50
    .local v2, "entity":Lcom/lzy/okgo/db/ColumnEntity;
    iget-object v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->compositePrimaryKey:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 51
    const-string v3, "PRIMARY KEY ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->compositePrimaryKey:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 53
    .local v6, "primaryKey":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v6    # "primaryKey":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 58
    :cond_1
    iget-object v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->columnType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-boolean v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->isNotNull:Z

    if-eqz v3, :cond_2

    .line 60
    const-string v3, " NOT NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_2
    iget-boolean v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->isPrimary:Z

    if-eqz v3, :cond_3

    .line 63
    const-string v3, " PRIMARY KEY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_3
    iget-boolean v3, v2, Lcom/lzy/okgo/db/ColumnEntity;->isAutoincrement:Z

    if-eqz v3, :cond_4

    .line 66
    const-string v3, " AUTOINCREMENT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_4
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .end local v2    # "entity":Lcom/lzy/okgo/db/ColumnEntity;
    :goto_2
    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 74
    :cond_6
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getColumnCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/lzy/okgo/db/TableEntity;->getColumnCount()I

    move-result v0

    .line 95
    .local v0, "columnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 96
    iget-object v2, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/db/ColumnEntity;

    iget-object v2, v2, Lcom/lzy/okgo/db/ColumnEntity;->columnName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/db/TableEntity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/db/ColumnEntity;

    iget-object v0, v0, Lcom/lzy/okgo/db/ColumnEntity;->columnName:Ljava/lang/String;

    return-object v0
.end method
