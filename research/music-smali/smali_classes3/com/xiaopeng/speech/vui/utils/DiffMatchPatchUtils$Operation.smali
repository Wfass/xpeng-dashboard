.class public final enum Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
.super Ljava/lang/Enum;
.source "DiffMatchPatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

.field public static final enum DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

.field public static final enum EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

.field public static final enum INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v2, 0x1

    const-string v3, "INSERT"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v3, 0x2

    const-string v4, "EQUAL"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->$VALUES:[Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    .locals 1

    .line 75
    const-class v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->$VALUES:[Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    return-object v0
.end method
