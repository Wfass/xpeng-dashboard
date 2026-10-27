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
.field private static final synthetic $VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

.field public static final enum XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;


# instance fields
.field private srcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 277
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_ROM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 278
    new-instance v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v4, "XMART_APP"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 279
    new-instance v4, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v6, "XMART_THIRD_APP"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 280
    new-instance v6, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v8, "ANDROID_APP"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    new-array v8, v9, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 276
    sput-object v8, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

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
            "srcType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 285
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->srcType:I

    return-void
.end method

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 301
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 297
    :cond_2
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 295
    :cond_3
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 276
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1

    .line 276
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0
.end method


# virtual methods
.method public getSrcType()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->srcType:I

    return v0
.end method
