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
    .locals 7

    .line 260
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_ROM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 261
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 262
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "XMART_THIRD_APP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 263
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    const-string v1, "ANDROID_APP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    .line 259
    new-array v0, v6, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "srcType"    # I
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

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3
    .param p0, "i"    # I

    .line 276
    packed-switch p0, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 282
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 280
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 278
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 259
    const-class v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 1

    .line 259
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->$VALUES:[Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    invoke-virtual {v0}, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0
.end method


# virtual methods
.method public getSrcType()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->srcType:I

    return v0
.end method
