.class public Lcom/xiaopeng/commonfunc/b/b/a;
.super Ljava/lang/Object;
.source "DiagnosisCodeModel.java"


# static fields
.field private static final nP:Ljava/lang/String;

.field private static final nQ:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private nR:Landroid/database/sqlite/SQLiteDatabase;

.field private nS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;",
            ">;"
        }
    .end annotation
.end field

.field private nT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-string v0, "PATH_DIAGNOSIS_DB"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/b/a;->nP:Ljava/lang/String;

    .line 35
    const-string v0, "ERRORCODE"

    const-string v1, "TIME"

    const-string v2, "ERRORMSG"

    const-string v3, "VERSION"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/b/a;->nQ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/b/a;->dF()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/b/a;->dF()V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nT:[Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 10
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

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 130
    const-string p1, "DiagnosisCodeModel"

    const-string p2, "mSQLiteDatabase is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v6, p3

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, p2

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "ERRORCODE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "TIMESTAMP between ? and ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ID DESC"

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 136
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 137
    if-lez p2, :cond_2

    .line 138
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 139
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    nop

    .line 149
    :goto_1
    return-object v0

    .line 146
    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method

.method public b(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 10
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

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 155
    const-string p1, "DiagnosisCodeModel"

    const-string p2, "mSQLiteDatabase is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v6, p3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, v6, p4

    .line 158
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/xiaopeng/commonfunc/b/b/a;->nQ:[Ljava/lang/String;

    const-string v5, "TIMESTAMP between ? and ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ID DESC"

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 161
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 162
    if-lez p2, :cond_1

    .line 163
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 164
    new-instance p2, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    .line 165
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 166
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, p5, v2, v3, v4}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 172
    nop

    .line 174
    :goto_1
    return-object v0

    .line 171
    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method

.method public bG(I)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nT:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public dF()V
    .locals 3

    .line 56
    :try_start_0
    sget-object v0, Lcom/xiaopeng/commonfunc/b/b/a;->nP:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/xiaopeng/commonfunc/b/b/a;->nP:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :goto_0
    return-void
.end method

.method public dG()Ljava/util/List;
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
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    return-object v0
.end method

.method public dH()[Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nT:[Ljava/lang/String;

    return-object v0
.end method

.method public dI()V
    .locals 5

    .line 78
    nop

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/b/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "diagnosis_name.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 82
    new-array v0, v0, [B

    .line 83
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 84
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/xiaopeng/commonfunc/b/b/a$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/commonfunc/b/b/a$1;-><init>(Lcom/xiaopeng/commonfunc/b/b/a;)V

    .line 86
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/b/b/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-eqz v1, :cond_0

    .line 92
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 87
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 88
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    if-eqz v1, :cond_0

    .line 92
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 95
    :goto_1
    goto :goto_2

    .line 93
    :catch_2
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 98
    :cond_0
    :goto_2
    return-void

    .line 90
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 92
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    goto :goto_4

    .line 93
    :catch_3
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    :cond_1
    :goto_4
    throw v0
.end method

.method public dJ()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "DiagnosisCodeModel"

    const-string v1, "mSQLiteDatabase is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/xiaopeng/commonfunc/a;->nH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->clearDiagnosisData()V

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/xiaopeng/commonfunc/a;->nH:[Ljava/lang/String;

    aget-object v4, v2, v1

    sget-object v5, Lcom/xiaopeng/commonfunc/b/b/a;->nQ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "ID DESC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 113
    if-lez v3, :cond_1

    .line 114
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    new-instance v3, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 116
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 117
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->addDiagnosisData(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_1

    .line 122
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
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nR:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/b/a;->nS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    :cond_1
    return-void
.end method
