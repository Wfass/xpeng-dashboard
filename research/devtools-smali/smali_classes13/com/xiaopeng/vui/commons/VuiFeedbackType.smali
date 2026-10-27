.class public final enum Lcom/xiaopeng/vui/commons/VuiFeedbackType;
.super Ljava/lang/Enum;
.source "VuiFeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiFeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Zk:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field public static final enum Zl:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field private static final synthetic Zm:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    const-string v1, "SOUND"

    const-string v2, "Sound"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zk:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 6
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    const-string v1, "TTS"

    const-string v2, "Tts"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zl:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zk:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zl:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zm:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->type:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->Zm:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object v0
.end method
