.class public final enum Lcom/xiaopeng/datalog/bean/LogEvent$LogType;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/bean/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/datalog/bean/LogEvent$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

.field public static final enum CUSTOMIZED:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

.field public static final enum EXCEPTION:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

.field public static final enum TIME:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;


# instance fields
.field private logType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 262
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v1, "TIME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->TIME:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    .line 263
    new-instance v1, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v4, "EXCEPTION"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->EXCEPTION:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    .line 264
    new-instance v4, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v6, "CUSTOMIZED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->CUSTOMIZED:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    new-array v6, v7, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 261
    sput-object v6, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "logType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->logType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$LogType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 261
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;
    .locals 1

    .line 261
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-object v0
.end method


# virtual methods
.method public getLogType()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->logType:I

    return v0
.end method
