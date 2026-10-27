.class public final enum Lcom/qiyi/video/qsrbase/QYSExecResult;
.super Ljava/lang/Enum;
.source "QYSExecResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qiyi/video/qsrbase/QYSExecResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qiyi/video/qsrbase/QYSExecResult;

.field public static final enum RESULT_ERROR:Lcom/qiyi/video/qsrbase/QYSExecResult;

.field public static final enum RESULT_OK:Lcom/qiyi/video/qsrbase/QYSExecResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecResult;

    const-string v1, "RESULT_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qiyi/video/qsrbase/QYSExecResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_OK:Lcom/qiyi/video/qsrbase/QYSExecResult;

    .line 11
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecResult;

    const-string v1, "RESULT_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/qiyi/video/qsrbase/QYSExecResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_ERROR:Lcom/qiyi/video/qsrbase/QYSExecResult;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qiyi/video/qsrbase/QYSExecResult;

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_OK:Lcom/qiyi/video/qsrbase/QYSExecResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_ERROR:Lcom/qiyi/video/qsrbase/QYSExecResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecResult;->$VALUES:[Lcom/qiyi/video/qsrbase/QYSExecResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qiyi/video/qsrbase/QYSExecResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/qiyi/video/qsrbase/QYSExecResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qsrbase/QYSExecResult;

    return-object v0
.end method

.method public static values()[Lcom/qiyi/video/qsrbase/QYSExecResult;
    .locals 1

    .line 8
    sget-object v0, Lcom/qiyi/video/qsrbase/QYSExecResult;->$VALUES:[Lcom/qiyi/video/qsrbase/QYSExecResult;

    invoke-virtual {v0}, [Lcom/qiyi/video/qsrbase/QYSExecResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiyi/video/qsrbase/QYSExecResult;

    return-object v0
.end method
