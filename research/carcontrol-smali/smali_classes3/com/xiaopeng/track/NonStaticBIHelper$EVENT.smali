.class public final enum Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;
.super Ljava/lang/Enum;
.source "NonStaticBIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/track/NonStaticBIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

.field public static final enum collect:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

.field public static final enum expose:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

.field public static final enum interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const-string v1, "collect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->collect:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    .line 33
    new-instance v1, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const-string v3, "interact"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    .line 34
    new-instance v3, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const-string v5, "expose"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->expose:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 31
    sput-object v5, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->$VALUES:[Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    const-class v0, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->$VALUES:[Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    invoke-virtual {v0}, [Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    return-object v0
.end method
