.class public Lcom/xiaopeng/aicabin/logic/db/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AiCabinSQLiteHelper.java"


# instance fields
.field public a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p5, p0, Lcom/xiaopeng/aicabin/logic/db/a;->a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/a;->a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/a;->a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/a;->a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/a;->a:Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
