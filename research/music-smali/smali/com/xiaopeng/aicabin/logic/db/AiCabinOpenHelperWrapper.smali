.class public abstract Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;
.super Ljava/lang/Object;
.source "AiCabinOpenHelperWrapper.java"


# instance fields
.field private sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/xiaopeng/aicabin/logic/db/a;

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getVersion()I

    move-result v6

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/aicabin/logic/db/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 8
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 9
    new-instance p1, Lcom/xiaopeng/aicabin/logic/db/a;

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getVersion()I

    move-result v6

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/aicabin/logic/db/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;)V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    const-class v1, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found e = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public getSqLiteOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public abstract getTargetPackageName()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
