.class public abstract Lcom/xiaopeng/aicabin/logic/db/DbCRUDBaseLogic;
.super Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;
.source "DbCRUDBaseLogic.java"


# static fields
.field private static final DB_OPT:Ljava/lang/String; = "db_opt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->action()V

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
