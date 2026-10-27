.class public final enum Lcom/xiaopeng/aicabin/logic/LogicCode;
.super Ljava/lang/Enum;
.source "LogicCode.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/ICode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/logic/LogicCode;",
        ">;",
        "Lcom/xiaopeng/aicabin/ICode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_BINDER_FAILED:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_BINDER_NOT_EXIST:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_BINDER_TRANSACT_FATAL:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_END:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_LOGIC_ASYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_LOGIC_INSTANCE_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_LOGIC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

.field public static final enum COMMON_LOGIC_SYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;


# instance fields
.field private final mCode:I

.field private final mMessage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v1, 0x0

    const-string v2, "COMMON_BINDER_FAILED"

    const/16 v3, 0x2775

    const-string v4, "binder failed"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_BINDER_FAILED:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 2
    new-instance v2, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v3, 0x1

    const-string v4, "COMMON_BINDER_NOT_EXIST"

    const/16 v5, 0x2776

    const-string v6, "binder not exist"

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_BINDER_NOT_EXIST:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 3
    new-instance v4, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v5, 0x2

    const-string v6, "COMMON_BINDER_TRANSACT_FATAL"

    const/16 v7, 0x2777

    const-string v8, "remote service logic error"

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_BINDER_TRANSACT_FATAL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 4
    new-instance v6, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v7, 0x3

    const-string v8, "COMMON_LOGIC_ASYNC_MATCH_FAIL"

    const/16 v9, 0x2778

    const-string v10, "async match fail, changed to sync"

    invoke-direct {v6, v8, v7, v9, v10}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_ASYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 5
    new-instance v8, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v9, 0x4

    const-string v10, "COMMON_LOGIC_SYNC_MATCH_FAIL"

    const/16 v11, 0x2779

    const-string v12, "sync match fail, changed to async"

    invoke-direct {v8, v10, v9, v11, v12}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_SYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 6
    new-instance v10, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v11, 0x5

    const-string v12, "COMMON_LOGIC_INSTANCE_FAIL"

    const/16 v13, 0x277a

    const-string v14, "logic instance create fail"

    invoke-direct {v10, v12, v11, v13, v14}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_INSTANCE_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 7
    new-instance v12, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v13, 0x6

    const-string v14, "COMMON_LOGIC_MATCH_FAIL"

    const/16 v15, 0x277b

    const-string v11, "sync match fail, need to check!"

    invoke-direct {v12, v14, v13, v15, v11}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    .line 8
    new-instance v11, Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/4 v14, 0x7

    const-string v15, "COMMON_END"

    const/16 v13, 0x4e20

    const-string v9, "common code end"

    invoke-direct {v11, v15, v14, v13, v9}, Lcom/xiaopeng/aicabin/logic/LogicCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_END:Lcom/xiaopeng/aicabin/logic/LogicCode;

    const/16 v9, 0x8

    .line 9
    new-array v9, v9, [Lcom/xiaopeng/aicabin/logic/LogicCode;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    aput-object v11, v9, v14

    sput-object v9, Lcom/xiaopeng/aicabin/logic/LogicCode;->$VALUES:[Lcom/xiaopeng/aicabin/logic/LogicCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->mCode:I

    .line 3
    iput-object p4, p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/LogicCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/logic/LogicCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/logic/LogicCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/LogicCode;->$VALUES:[Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/logic/LogicCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/logic/LogicCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->mMessage:Ljava/lang/String;

    return-object v0
.end method
