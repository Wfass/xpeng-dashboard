.class public final enum Lcom/xiaopeng/datalog/bean/LogEvent$a;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/bean/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/datalog/bean/LogEvent$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$a;

.field public static final enum CAN:Lcom/xiaopeng/datalog/bean/LogEvent$a;

.field public static final enum CDU:Lcom/xiaopeng/datalog/bean/LogEvent$a;


# instance fields
.field private refType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 248
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CAN"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaopeng/datalog/bean/LogEvent$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CAN:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    .line 249
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;

    const/4 v3, 0x1

    const-string v4, "CDU"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CDU:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    .line 247
    new-array v0, v1, [Lcom/xiaopeng/datalog/bean/LogEvent$a;

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CAN:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CDU:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput p3, p0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->refType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$a;
    .locals 1

    .line 247
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/datalog/bean/LogEvent$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$a;
    .locals 1

    .line 247
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$a;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->refType:I

    return v0
.end method
