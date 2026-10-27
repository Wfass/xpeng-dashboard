.class public final enum Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/bean/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SrcType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum qe:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum qf:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum qg:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum qh:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field private static final synthetic qi:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;


# instance fields
.field private srcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 260
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_ROM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qe:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 261
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qf:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 262
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_THIRD_APP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qg:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 263
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "ANDROID_APP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qh:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 259
    new-array v0, v6, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qe:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qf:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qg:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qh:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qi:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->srcType:I

    .line 269
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1

    .line 259
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1

    .line 259
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qi:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0
.end method
