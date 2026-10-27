.class public final enum Lcom/xiaopeng/datalog/bean/LogEvent$RefType;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/bean/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/datalog/bean/LogEvent$RefType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

.field public static final enum CAN:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

.field public static final enum CDU:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;


# instance fields
.field private refType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 248
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    const-string v1, "CAN"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->CAN:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    .line 249
    new-instance v1, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    const-string v4, "CDU"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->CDU:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    new-array v3, v3, [Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 247
    sput-object v3, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

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
            "refType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->refType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$RefType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 247
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$RefType;
    .locals 1

    .line 247
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    return-object v0
.end method


# virtual methods
.method public getRefType()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->refType:I

    return v0
.end method
