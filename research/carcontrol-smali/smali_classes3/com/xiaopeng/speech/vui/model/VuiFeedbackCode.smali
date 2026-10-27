.class public final enum Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;
.super Ljava/lang/Enum;
.source "VuiFeedbackCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

.field public static final enum FAIL:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

.field public static final enum SUCCESS:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->SUCCESS:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 5
    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    const-string v4, "FAIL"

    invoke-direct {v1, v4, v3, v2}, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->FAIL:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->$VALUES:[Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->$VALUES:[Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-object v0
.end method


# virtual methods
.method public getFeedbackCode()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->code:I

    return v0
.end method
