.class public final enum Lcom/xiaopeng/datalog/bean/LogEvent$b;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/bean/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/datalog/bean/LogEvent$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$b;

.field public static final enum ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

.field public static final enum XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

.field public static final enum XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$b;

.field public static final enum XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;


# instance fields
.field private srcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 277
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "XMART_ROM"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    .line 278
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    const/4 v3, 0x2

    const-string v4, "XMART_APP"

    invoke-direct {v0, v4, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    .line 279
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    const/4 v4, 0x3

    const-string v5, "XMART_THIRD_APP"

    invoke-direct {v0, v5, v3, v4}, Lcom/xiaopeng/datalog/bean/LogEvent$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    .line 280
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    const/4 v5, 0x4

    const-string v6, "ANDROID_APP"

    invoke-direct {v0, v6, v4, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    .line 276
    new-array v0, v5, [Lcom/xiaopeng/datalog/bean/LogEvent$b;

    sget-object v5, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$b;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$b;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 285
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->srcType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$b;
    .locals 1

    .line 276
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$b;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$b;
    .locals 1

    .line 276
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$b;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$b;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$b;

    return-object v0
.end method
