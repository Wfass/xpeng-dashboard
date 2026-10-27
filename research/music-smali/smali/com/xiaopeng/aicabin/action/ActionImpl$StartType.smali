.class public final enum Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;
.super Ljava/lang/Enum;
.source "ActionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/action/ActionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

.field public static final enum onApplicationPreCreated:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

.field public static final enum onApplicationResumed:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    const/4 v1, 0x0

    const-string v2, "onApplicationPreCreated"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationPreCreated:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    .line 43
    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    const/4 v2, 0x1

    const-string v3, "onApplicationResumed"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationResumed:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationPreCreated:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationResumed:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;
    .locals 1

    .line 39
    const-class v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    return-object v0
.end method
