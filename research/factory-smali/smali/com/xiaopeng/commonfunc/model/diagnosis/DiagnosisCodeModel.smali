.class public Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;
.super Ljava/lang/Object;
.source "DiagnosisCodeModel.java"


# static fields
.field private static final COLUMN_INDEX_ERROR_CODE:I = 0x0

.field private static final COLUMN_INDEX_ERROR_MSG:I = 0x2

.field private static final COLUMN_INDEX_TIME:I = 0x1

.field private static final COLUMN_INDEX_VERSION:I = 0x3

.field private static final DIAGNOSIS_ORDER_DESC_BY_ID:Ljava/lang/String; = "ID DESC"

.field private static final DIAGNOSIS_SELECT_COLUMN:[Ljava/lang/String;

.field private static final PATH_DIAGNOSIS_DB:Ljava/lang/String;

.field private static final PATH_ERRORCODE_JSON:Ljava/lang/String; = "diagnosis_name.json"

.field private static final TAG:Ljava/lang/String; = "DiagnosisCodeModel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosisModuleNames:[Ljava/lang/String;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-string v0, "PATH_DIAGNOSIS_DB"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->PATH_DIAGNOSIS_DB:Ljava/lang/String;

    .line 35
    const-string v0, "ERRORCODE"

    const-string v1, "TIME"

    const-string v2, "ERRORMSG"

    const-string v3, "VERSION"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->DIAGNOSIS_SELECT_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->initDb()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->initDb()V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDiagnosisModuleNames:[Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getDiagnosisBetweenTime(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 12
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 129
    .local v2, "errorCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "DiagnosisCodeModel"

    const-string v3, "mSQLiteDatabase is null"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v7, v11

    const/4 v0, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    .line 133
    .local v7, "whereArgs":[Ljava/lang/String;
    iget-object v3, v1, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "ERRORCODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "TIMESTAMP between ? and ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ID DESC"

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 136
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 137
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 138
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 140
    .local v4, "errorcode":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v4    # "errorcode":I
    :cond_1
    goto :goto_0

    .line 146
    .end local v0    # "count":I
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 147
    nop

    .line 149
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 146
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getDiagnosisDataBetweenTime(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 13
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 154
    .local v2, "errorCodeList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;>;"
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "DiagnosisCodeModel"

    const-string v3, "mSQLiteDatabase is null"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v7, v11

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v7, v12

    .line 158
    .local v7, "whereArgs":[Ljava/lang/String;
    iget-object v3, v1, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->DIAGNOSIS_SELECT_COLUMN:[Ljava/lang/String;

    const-string v6, "TIMESTAMP between ? and ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ID DESC"

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 161
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 162
    .local v4, "count":I
    if-lez v4, :cond_1

    .line 163
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    new-instance v5, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 165
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 166
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v5, "data":Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v5    # "data":Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    goto :goto_0

    .line 171
    .end local v4    # "count":I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 172
    nop

    .line 174
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 171
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getDiagnosisDataFromDB()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "DiagnosisCodeModel"

    const-string v1, "mSQLiteDatabase is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/commonfunc/Constant;->DIAGNOSIS_SQL_TBS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->clearDiagnosisData()V

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/xiaopeng/commonfunc/Constant;->DIAGNOSIS_SQL_TBS:[Ljava/lang/String;

    aget-object v4, v2, v1

    sget-object v5, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->DIAGNOSIS_SELECT_COLUMN:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ID DESC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 113
    .local v3, "count":I
    if-lez v3, :cond_1

    .line 114
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    new-instance v4, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 116
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 117
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v4, "data":Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->addDiagnosisData(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v4    # "data":Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    goto :goto_1

    .line 122
    .end local v3    # "count":I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 123
    nop

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 125
    .end local v1    # "i":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public getDiagnosisModuleNames()[Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDiagnosisModuleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedModule(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDiagnosisModuleNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initData()V
    .locals 6

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "diagnosis_name.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 82
    .local v1, "size":I
    new-array v2, v1, [B

    .line 83
    .local v2, "bytes":[B
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 84
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    .local v3, "string":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;)V

    .line 86
    invoke-virtual {v5}, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 85
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1    # "size":I
    .end local v2    # "bytes":[B
    .end local v3    # "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_0
    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 87
    :catch_1
    move-exception v1

    .line 88
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 92
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 90
    :goto_2
    if-eqz v0, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 95
    goto :goto_3

    .line 93
    :catch_2
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v1
.end method

.method public initDb()V
    .locals 3

    .line 56
    :try_start_0
    sget-object v0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->PATH_DIAGNOSIS_DB:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->PATH_DIAGNOSIS_DB:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    :cond_1
    return-void
.end method
