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
    .locals 6

    .line 245
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v1, "TIME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->TIME:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    .line 246
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v1, "EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->EXCEPTION:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    .line 247
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    const-string v1, "CUSTOMIZED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->CUSTOMIZED:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    .line 244
    new-array v0, v5, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->TIME:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->EXCEPTION:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->CUSTOMIZED:Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "logType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->logType:I

    .line 252
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 244
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;
    .locals 1

    .line 244
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$LogType;

    return-object v0
.end method


# virtual methods
.method public getLogType()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$LogType;->logType:I

    return v0
.end method
