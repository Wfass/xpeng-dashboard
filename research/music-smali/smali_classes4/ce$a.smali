.class final enum Lce$a;
.super Ljava/lang/Enum;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lce$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lce$a;

.field public static final enum CENTER:Lce$a;

.field public static final enum END:Lce$a;

.field public static final enum NONE:Lce$a;

.field public static final enum START:Lce$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 306
    new-instance v0, Lce$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lce$a;->NONE:Lce$a;

    new-instance v0, Lce$a;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Lce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lce$a;->START:Lce$a;

    new-instance v0, Lce$a;

    const/4 v3, 0x2

    const-string v4, "END"

    invoke-direct {v0, v4, v3}, Lce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lce$a;->END:Lce$a;

    new-instance v0, Lce$a;

    const/4 v4, 0x3

    const-string v5, "CENTER"

    invoke-direct {v0, v5, v4}, Lce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lce$a;->CENTER:Lce$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lce$a;

    sget-object v5, Lce$a;->NONE:Lce$a;

    aput-object v5, v0, v1

    sget-object v1, Lce$a;->START:Lce$a;

    aput-object v1, v0, v2

    sget-object v1, Lce$a;->END:Lce$a;

    aput-object v1, v0, v3

    sget-object v1, Lce$a;->CENTER:Lce$a;

    aput-object v1, v0, v4

    sput-object v0, Lce$a;->$VALUES:[Lce$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lce$a;
    .locals 1

    .line 306
    const-class v0, Lce$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lce$a;

    return-object p0
.end method

.method public static values()[Lce$a;
    .locals 1

    .line 306
    sget-object v0, Lce$a;->$VALUES:[Lce$a;

    invoke-virtual {v0}, [Lce$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lce$a;

    return-object v0
.end method
