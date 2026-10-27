.class public final enum Lbrave/Span$Kind;
.super Ljava/lang/Enum;
.source "Span.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbrave/Span$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbrave/Span$Kind;

.field public static final enum CLIENT:Lbrave/Span$Kind;

.field public static final enum CONSUMER:Lbrave/Span$Kind;

.field public static final enum PRODUCER:Lbrave/Span$Kind;

.field public static final enum SERVER:Lbrave/Span$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lbrave/Span$Kind;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lbrave/Span$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    .line 38
    new-instance v0, Lbrave/Span$Kind;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lbrave/Span$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/Span$Kind;->SERVER:Lbrave/Span$Kind;

    .line 48
    new-instance v0, Lbrave/Span$Kind;

    const/4 v3, 0x2

    const-string v4, "PRODUCER"

    invoke-direct {v0, v4, v3}, Lbrave/Span$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/Span$Kind;->PRODUCER:Lbrave/Span$Kind;

    .line 57
    new-instance v0, Lbrave/Span$Kind;

    const/4 v4, 0x3

    const-string v5, "CONSUMER"

    invoke-direct {v0, v5, v4}, Lbrave/Span$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/Span$Kind;->CONSUMER:Lbrave/Span$Kind;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lbrave/Span$Kind;

    sget-object v5, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    aput-object v5, v0, v1

    sget-object v1, Lbrave/Span$Kind;->SERVER:Lbrave/Span$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lbrave/Span$Kind;->PRODUCER:Lbrave/Span$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lbrave/Span$Kind;->CONSUMER:Lbrave/Span$Kind;

    aput-object v1, v0, v4

    sput-object v0, Lbrave/Span$Kind;->$VALUES:[Lbrave/Span$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrave/Span$Kind;
    .locals 1

    .line 36
    const-class v0, Lbrave/Span$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbrave/Span$Kind;

    return-object p0
.end method

.method public static values()[Lbrave/Span$Kind;
    .locals 1

    .line 36
    sget-object v0, Lbrave/Span$Kind;->$VALUES:[Lbrave/Span$Kind;

    invoke-virtual {v0}, [Lbrave/Span$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrave/Span$Kind;

    return-object v0
.end method
