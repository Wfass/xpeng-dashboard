.class public abstract Lcom/xiaopeng/aicabin/logic/db/DbInsertBaseLogic;
.super Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;
.source "DbInsertBaseLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public final action()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->action()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbInsertBaseLogic;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbInsertBaseLogic;->getWhereNullColumnHack()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbInsertBaseLogic;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v2, "insert table name is empty"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    return-void

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/aicabin/logic/db/DbInsertBaseLogic;->onInsertResult(J)V

    return-void
.end method

.method public abstract getOpenHelperClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getValues()Landroid/content/ContentValues;
.end method

.method public getWhereNullColumnHack()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onInsertResult(J)V
    .locals 0

    return-void
.end method
